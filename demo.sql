-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 29, 2023 at 03:55 PM
-- Server version: 10.5.20-MariaDB-cll-lve
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thecodegrammer_agency`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_aboutpage`
--

CREATE TABLE `about_aboutpage` (
  `id` bigint(20) NOT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `feature1` varchar(100) DEFAULT NULL,
  `feature2` varchar(100) DEFAULT NULL,
  `feature3` varchar(100) DEFAULT NULL,
  `years_of_experience` int(11) DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about_aboutpage`
--

INSERT INTO `about_aboutpage` (`id`, `subtitle`, `title`, `description`, `feature1`, `feature2`, `feature3`, `years_of_experience`, `image1`, `image2`, `image3`) VALUES
(1, 'Why Choose', 'Phasellus Tristique A Nisi Etal Tristique Cras Interdum.', 'Integer purus odio, placerat nec rhoncus in, ullamcorper nec dolor. Class onlin aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos only himenaeos. Praesent nec neque at dolor venenatis consectetur eu quis ex. the Donec lacinia placerat felis non aliquam.Mauris nec justo vitae ante auctor tol euismod sit amet non ipsum. Praesent commodo at massa eget suscipit. Utani vitae enim velit. Ut ut posuere orci, id dapibus odio.', '24/7 Support', 'Unique Design', 'Clean Code Develope', 20, 'AboutPage/why-1.jpg', 'AboutPage/why-2.jpg', 'AboutPage/why-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `about_aboutpageseo`
--

CREATE TABLE `about_aboutpageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about_aboutpageseo`
--

INSERT INTO `about_aboutpageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'About Us', 'The CodeGrammer');

-- --------------------------------------------------------

--
-- Table structure for table `about_teamsection`
--

CREATE TABLE `about_teamsection` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `facebook` varchar(500) DEFAULT NULL,
  `instagram` varchar(500) DEFAULT NULL,
  `linkedin` varchar(500) DEFAULT NULL,
  `whatsapp` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about_teamsection`
--

INSERT INTO `about_teamsection` (`id`, `image`, `name`, `position`, `facebook`, `instagram`, `linkedin`, `whatsapp`) VALUES
(1, 'Teams/team-1.jpg', 'Thoren Okendhild', 'Founder & Director', 'https://facebook.com', '#', '#', '0123456789'),
(2, 'Teams/team-2.jpg', 'Lincoln Anthony', 'Co Founder & CEO', 'https://facebook.com', '#', '#', '0123456789'),
(3, 'Teams/team-3.jpg', 'Adrian Eodri', 'Managing Director', 'https://facebook.com', '#', '#', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_passwordresettoken`
--

CREATE TABLE `accounts_passwordresettoken` (
  `id` bigint(20) NOT NULL,
  `token` char(32) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `expiration_time` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user`
--

CREATE TABLE `accounts_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `accounts_user`
--

INSERT INTO `accounts_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `is_verified`, `role`, `created`) VALUES
(4, 'pbkdf2_sha256$260000$EQv5LS8bJWzMUQauqRj13y$qMwEeTsz7LjSZZSo1YxcueBWkgKpTfT7Ue+6LwWwcfo=', '2023-10-29 04:11:44.965553', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-10-02 14:05:24.719614', 0, 'Admin', '2023-10-02'),
(5, 'pbkdf2_sha256$260000$epUIo4LO6QRxfuJODW1QW1$1koJ3V3wQWS8FZ2xtZ1hA7DIyBGF9ZGtxLTX79y+zOM=', '2023-10-29 18:56:36.036784', 1, 'editor', '', '', 'editor@gmail.com', 1, 1, '2023-10-02 14:05:45.775979', 0, 'Editor', '2023-10-02'),
(6, 'pbkdf2_sha256$260000$lVaAHQyLaBAzJmaGlW3TnQ$u0C4MkZN8vBT3k4peyYKJYLy5YI5wxrVguGzLVCi7/E=', '2023-10-15 18:33:03.387745', 1, 'demo', '', '', 'demo@gmail.com', 1, 1, '2023-10-15 18:32:50.551057', 0, 'Admin', '2023-10-16');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofile`
--

CREATE TABLE `accounts_userprofile` (
  `id` bigint(20) NOT NULL,
  `profile_picture` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `facebook` varchar(500) DEFAULT NULL,
  `instagram` varchar(500) DEFAULT NULL,
  `linkedin` varchar(500) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `accounts_userprofile`
--

INSERT INTO `accounts_userprofile` (`id`, `profile_picture`, `name`, `slug`, `email`, `phone`, `address`, `city`, `state`, `country`, `zipcode`, `facebook`, `instagram`, `linkedin`, `user_id`) VALUES
(4, 'user_pictures/man.png', 'Rakib Hasan', 'admin', 'admin@gmail.com', '0124548745', 'Chowrasta', 'Gazipur', 'Dhaka', 'Bangladesh', '1000', 'https://facebook.com', 'https://instagram.com', 'https://linkedin.com', 4),
(5, 'user_pictures/male-avatar_GMzQuZU.jpg', 'Jhon Smith', 'editor', 'editor@gmail.com', '4548745', 'Mohakhali DHOS, Mohakhali', 'Dhaka', 'Dhaka', 'Bangladesh', '1000', 'https://facebook.com', 'https://instagram.com', 'https://linkedin.com', 5),
(6, '', 'demo', 'demo', 'demo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user_groups`
--

CREATE TABLE `accounts_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user_user_permissions`
--

CREATE TABLE `accounts_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add user profile', 7, 'add_userprofile'),
(26, 'Can change user profile', 7, 'change_userprofile'),
(27, 'Can delete user profile', 7, 'delete_userprofile'),
(28, 'Can view user profile', 7, 'view_userprofile'),
(29, 'Can add home page seo', 8, 'add_homepageseo'),
(30, 'Can change home page seo', 8, 'change_homepageseo'),
(31, 'Can delete home page seo', 8, 'delete_homepageseo'),
(32, 'Can view home page seo', 8, 'view_homepageseo'),
(33, 'Can add slider section', 9, 'add_slidersection'),
(34, 'Can change slider section', 9, 'change_slidersection'),
(35, 'Can delete slider section', 9, 'delete_slidersection'),
(36, 'Can view slider section', 9, 'view_slidersection'),
(37, 'Can add service section', 10, 'add_servicesection'),
(38, 'Can change service section', 10, 'change_servicesection'),
(39, 'Can delete service section', 10, 'delete_servicesection'),
(40, 'Can view service section', 10, 'view_servicesection'),
(41, 'Can add about section', 11, 'add_aboutsection'),
(42, 'Can change about section', 11, 'change_aboutsection'),
(43, 'Can delete about section', 11, 'delete_aboutsection'),
(44, 'Can view about section', 11, 'view_aboutsection'),
(45, 'Can add fun fact section', 12, 'add_funfactsection'),
(46, 'Can change fun fact section', 12, 'change_funfactsection'),
(47, 'Can delete fun fact section', 12, 'delete_funfactsection'),
(48, 'Can view fun fact section', 12, 'view_funfactsection'),
(49, 'Can add project section', 13, 'add_projectsection'),
(50, 'Can change project section', 13, 'change_projectsection'),
(51, 'Can delete project section', 13, 'delete_projectsection'),
(52, 'Can view project section', 13, 'view_projectsection'),
(53, 'Can add project category', 14, 'add_projectcategory'),
(54, 'Can change project category', 14, 'change_projectcategory'),
(55, 'Can delete project category', 14, 'delete_projectcategory'),
(56, 'Can view project category', 14, 'view_projectcategory'),
(57, 'Can add client section', 15, 'add_clientsection'),
(58, 'Can change client section', 15, 'change_clientsection'),
(59, 'Can delete client section', 15, 'delete_clientsection'),
(60, 'Can view client section', 15, 'view_clientsection'),
(61, 'Can add pricing page seo', 16, 'add_pricingpageseo'),
(62, 'Can change pricing page seo', 16, 'change_pricingpageseo'),
(63, 'Can delete pricing page seo', 16, 'delete_pricingpageseo'),
(64, 'Can view pricing page seo', 16, 'view_pricingpageseo'),
(65, 'Can add pricing section', 17, 'add_pricingsection'),
(66, 'Can change pricing section', 17, 'change_pricingsection'),
(67, 'Can delete pricing section', 17, 'delete_pricingsection'),
(68, 'Can view pricing section', 17, 'view_pricingsection'),
(69, 'Can add testimonials section', 18, 'add_testimonialssection'),
(70, 'Can change testimonials section', 18, 'change_testimonialssection'),
(71, 'Can delete testimonials section', 18, 'delete_testimonialssection'),
(72, 'Can view testimonials section', 18, 'view_testimonialssection'),
(73, 'Can add about page seo', 19, 'add_aboutpageseo'),
(74, 'Can change about page seo', 19, 'change_aboutpageseo'),
(75, 'Can delete about page seo', 19, 'delete_aboutpageseo'),
(76, 'Can view about page seo', 19, 'view_aboutpageseo'),
(77, 'Can add team section', 20, 'add_teamsection'),
(78, 'Can change team section', 20, 'change_teamsection'),
(79, 'Can delete team section', 20, 'delete_teamsection'),
(80, 'Can view team section', 20, 'view_teamsection'),
(81, 'Can add about page', 21, 'add_aboutpage'),
(82, 'Can change about page', 21, 'change_aboutpage'),
(83, 'Can delete about page', 21, 'delete_aboutpage'),
(84, 'Can view about page', 21, 'view_aboutpage'),
(85, 'Can add header footer setting', 22, 'add_headerfootersetting'),
(86, 'Can change header footer setting', 22, 'change_headerfootersetting'),
(87, 'Can delete header footer setting', 22, 'delete_headerfootersetting'),
(88, 'Can view header footer setting', 22, 'view_headerfootersetting'),
(89, 'Can add seo setting', 23, 'add_seosetting'),
(90, 'Can change seo setting', 23, 'change_seosetting'),
(91, 'Can delete seo setting', 23, 'delete_seosetting'),
(92, 'Can view seo setting', 23, 'view_seosetting'),
(93, 'Can add website setting', 24, 'add_websitesetting'),
(94, 'Can change website setting', 24, 'change_websitesetting'),
(95, 'Can delete website setting', 24, 'delete_websitesetting'),
(96, 'Can view website setting', 24, 'view_websitesetting'),
(97, 'Can add sub menu', 25, 'add_submenu'),
(98, 'Can change sub menu', 25, 'change_submenu'),
(99, 'Can delete sub menu', 25, 'delete_submenu'),
(100, 'Can view sub menu', 25, 'view_submenu'),
(101, 'Can add primary menu', 26, 'add_primarymenu'),
(102, 'Can change primary menu', 26, 'change_primarymenu'),
(103, 'Can delete primary menu', 26, 'delete_primarymenu'),
(104, 'Can view primary menu', 26, 'view_primarymenu'),
(105, 'Can add blog category', 27, 'add_blogcategory'),
(106, 'Can change blog category', 27, 'change_blogcategory'),
(107, 'Can delete blog category', 27, 'delete_blogcategory'),
(108, 'Can view blog category', 27, 'view_blogcategory'),
(109, 'Can add blogs', 28, 'add_blogs'),
(110, 'Can change blogs', 28, 'change_blogs'),
(111, 'Can delete blogs', 28, 'delete_blogs'),
(112, 'Can view blogs', 28, 'view_blogs'),
(113, 'Can add blog page seo', 29, 'add_blogpageseo'),
(114, 'Can change blog page seo', 29, 'change_blogpageseo'),
(115, 'Can delete blog page seo', 29, 'delete_blogpageseo'),
(116, 'Can view blog page seo', 29, 'view_blogpageseo'),
(117, 'Can add contact', 30, 'add_contact'),
(118, 'Can change contact', 30, 'change_contact'),
(119, 'Can delete contact', 30, 'delete_contact'),
(120, 'Can view contact', 30, 'view_contact'),
(121, 'Can add subscriber', 31, 'add_subscriber'),
(122, 'Can change subscriber', 31, 'change_subscriber'),
(123, 'Can delete subscriber', 31, 'delete_subscriber'),
(124, 'Can view subscriber', 31, 'view_subscriber'),
(125, 'Can add service page seo', 32, 'add_servicepageseo'),
(126, 'Can change service page seo', 32, 'change_servicepageseo'),
(127, 'Can delete service page seo', 32, 'delete_servicepageseo'),
(128, 'Can view service page seo', 32, 'view_servicepageseo'),
(129, 'Can add project page seo', 33, 'add_projectpageseo'),
(130, 'Can change project page seo', 33, 'change_projectpageseo'),
(131, 'Can delete project page seo', 33, 'delete_projectpageseo'),
(132, 'Can view project page seo', 33, 'view_projectpageseo'),
(133, 'Can add contact page seo', 34, 'add_contactpageseo'),
(134, 'Can change contact page seo', 34, 'change_contactpageseo'),
(135, 'Can delete contact page seo', 34, 'delete_contactpageseo'),
(136, 'Can view contact page seo', 34, 'view_contactpageseo'),
(137, 'Can add policy', 35, 'add_policy'),
(138, 'Can change policy', 35, 'change_policy'),
(139, 'Can delete policy', 35, 'delete_policy'),
(140, 'Can view policy', 35, 'view_policy'),
(141, 'Can add terms', 36, 'add_terms'),
(142, 'Can change terms', 36, 'change_terms'),
(143, 'Can delete terms', 36, 'delete_terms'),
(144, 'Can view terms', 36, 'view_terms'),
(145, 'Can add password reset token', 37, 'add_passwordresettoken'),
(146, 'Can change password reset token', 37, 'change_passwordresettoken'),
(147, 'Can delete password reset token', 37, 'delete_passwordresettoken'),
(148, 'Can view password reset token', 37, 'view_passwordresettoken'),
(149, 'Can add password reset token', 8, 'add_passwordresettoken'),
(150, 'Can change password reset token', 8, 'change_passwordresettoken'),
(151, 'Can delete password reset token', 8, 'delete_passwordresettoken'),
(152, 'Can view password reset token', 8, 'view_passwordresettoken'),
(153, 'Can add home page seo', 9, 'add_homepageseo'),
(154, 'Can change home page seo', 9, 'change_homepageseo'),
(155, 'Can delete home page seo', 9, 'delete_homepageseo'),
(156, 'Can view home page seo', 9, 'view_homepageseo'),
(157, 'Can add slider section', 10, 'add_slidersection'),
(158, 'Can change slider section', 10, 'change_slidersection'),
(159, 'Can delete slider section', 10, 'delete_slidersection'),
(160, 'Can view slider section', 10, 'view_slidersection'),
(161, 'Can add service section', 11, 'add_servicesection'),
(162, 'Can change service section', 11, 'change_servicesection'),
(163, 'Can delete service section', 11, 'delete_servicesection'),
(164, 'Can view service section', 11, 'view_servicesection'),
(165, 'Can add about section', 12, 'add_aboutsection'),
(166, 'Can change about section', 12, 'change_aboutsection'),
(167, 'Can delete about section', 12, 'delete_aboutsection'),
(168, 'Can view about section', 12, 'view_aboutsection'),
(169, 'Can add fun fact section', 13, 'add_funfactsection'),
(170, 'Can change fun fact section', 13, 'change_funfactsection'),
(171, 'Can delete fun fact section', 13, 'delete_funfactsection'),
(172, 'Can view fun fact section', 13, 'view_funfactsection'),
(173, 'Can add project section', 15, 'add_projectsection'),
(174, 'Can change project section', 15, 'change_projectsection'),
(175, 'Can delete project section', 15, 'delete_projectsection'),
(176, 'Can view project section', 15, 'view_projectsection'),
(177, 'Can add client section', 16, 'add_clientsection'),
(178, 'Can change client section', 16, 'change_clientsection'),
(179, 'Can delete client section', 16, 'delete_clientsection'),
(180, 'Can view client section', 16, 'view_clientsection'),
(181, 'Can add testimonials section', 17, 'add_testimonialssection'),
(182, 'Can change testimonials section', 17, 'change_testimonialssection'),
(183, 'Can delete testimonials section', 17, 'delete_testimonialssection'),
(184, 'Can view testimonials section', 17, 'view_testimonialssection'),
(185, 'Can add about page seo', 18, 'add_aboutpageseo'),
(186, 'Can change about page seo', 18, 'change_aboutpageseo'),
(187, 'Can delete about page seo', 18, 'delete_aboutpageseo'),
(188, 'Can view about page seo', 18, 'view_aboutpageseo'),
(189, 'Can add team section', 19, 'add_teamsection'),
(190, 'Can change team section', 19, 'change_teamsection'),
(191, 'Can delete team section', 19, 'delete_teamsection'),
(192, 'Can view team section', 19, 'view_teamsection'),
(193, 'Can add about page', 20, 'add_aboutpage'),
(194, 'Can change about page', 20, 'change_aboutpage'),
(195, 'Can delete about page', 20, 'delete_aboutpage'),
(196, 'Can view about page', 20, 'view_aboutpage'),
(197, 'Can add pricing page seo', 21, 'add_pricingpageseo'),
(198, 'Can change pricing page seo', 21, 'change_pricingpageseo'),
(199, 'Can delete pricing page seo', 21, 'delete_pricingpageseo'),
(200, 'Can view pricing page seo', 21, 'view_pricingpageseo'),
(201, 'Can add pricing section', 22, 'add_pricingsection'),
(202, 'Can change pricing section', 22, 'change_pricingsection'),
(203, 'Can delete pricing section', 22, 'delete_pricingsection'),
(204, 'Can view pricing section', 22, 'view_pricingsection'),
(205, 'Can add blog category', 23, 'add_blogcategory'),
(206, 'Can change blog category', 23, 'change_blogcategory'),
(207, 'Can delete blog category', 23, 'delete_blogcategory'),
(208, 'Can view blog category', 23, 'view_blogcategory'),
(209, 'Can add blogs', 24, 'add_blogs'),
(210, 'Can change blogs', 24, 'change_blogs'),
(211, 'Can delete blogs', 24, 'delete_blogs'),
(212, 'Can view blogs', 24, 'view_blogs'),
(213, 'Can add blog page seo', 25, 'add_blogpageseo'),
(214, 'Can change blog page seo', 25, 'change_blogpageseo'),
(215, 'Can delete blog page seo', 25, 'delete_blogpageseo'),
(216, 'Can view blog page seo', 25, 'view_blogpageseo'),
(217, 'Can add contact', 26, 'add_contact'),
(218, 'Can change contact', 26, 'change_contact'),
(219, 'Can delete contact', 26, 'delete_contact'),
(220, 'Can view contact', 26, 'view_contact'),
(221, 'Can add subscriber', 27, 'add_subscriber'),
(222, 'Can change subscriber', 27, 'change_subscriber'),
(223, 'Can delete subscriber', 27, 'delete_subscriber'),
(224, 'Can view subscriber', 27, 'view_subscriber'),
(225, 'Can add contact page seo', 28, 'add_contactpageseo'),
(226, 'Can change contact page seo', 28, 'change_contactpageseo'),
(227, 'Can delete contact page seo', 28, 'delete_contactpageseo'),
(228, 'Can view contact page seo', 28, 'view_contactpageseo'),
(229, 'Can add service page seo', 29, 'add_servicepageseo'),
(230, 'Can change service page seo', 29, 'change_servicepageseo'),
(231, 'Can delete service page seo', 29, 'delete_servicepageseo'),
(232, 'Can view service page seo', 29, 'view_servicepageseo'),
(233, 'Can add project page seo', 30, 'add_projectpageseo'),
(234, 'Can change project page seo', 30, 'change_projectpageseo'),
(235, 'Can delete project page seo', 30, 'delete_projectpageseo'),
(236, 'Can view project page seo', 30, 'view_projectpageseo'),
(237, 'Can add header footer setting', 31, 'add_headerfootersetting'),
(238, 'Can change header footer setting', 31, 'change_headerfootersetting'),
(239, 'Can delete header footer setting', 31, 'delete_headerfootersetting'),
(240, 'Can view header footer setting', 31, 'view_headerfootersetting'),
(241, 'Can add seo setting', 32, 'add_seosetting'),
(242, 'Can change seo setting', 32, 'change_seosetting'),
(243, 'Can delete seo setting', 32, 'delete_seosetting'),
(244, 'Can view seo setting', 32, 'view_seosetting'),
(245, 'Can add website setting', 33, 'add_websitesetting'),
(246, 'Can change website setting', 33, 'change_websitesetting'),
(247, 'Can delete website setting', 33, 'delete_websitesetting'),
(248, 'Can view website setting', 33, 'view_websitesetting'),
(249, 'Can add policy', 34, 'add_policy'),
(250, 'Can change policy', 34, 'change_policy'),
(251, 'Can delete policy', 34, 'delete_policy'),
(252, 'Can view policy', 34, 'view_policy'),
(253, 'Can add terms', 35, 'add_terms'),
(254, 'Can change terms', 35, 'change_terms'),
(255, 'Can delete terms', 35, 'delete_terms'),
(256, 'Can view terms', 35, 'view_terms'),
(257, 'Can add primary menu', 36, 'add_primarymenu'),
(258, 'Can change primary menu', 36, 'change_primarymenu'),
(259, 'Can delete primary menu', 36, 'delete_primarymenu'),
(260, 'Can view primary menu', 36, 'view_primarymenu'),
(261, 'Can add sub menu', 37, 'add_submenu'),
(262, 'Can change sub menu', 37, 'change_submenu'),
(263, 'Can delete sub menu', 37, 'delete_submenu'),
(264, 'Can view sub menu', 37, 'view_submenu'),
(265, 'Can add custom page', 38, 'add_custompage'),
(266, 'Can change custom page', 38, 'change_custompage'),
(267, 'Can delete custom page', 38, 'delete_custompage'),
(268, 'Can view custom page', 38, 'view_custompage');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogcategory`
--

CREATE TABLE `blog_blogcategory` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog_blogcategory`
--

INSERT INTO `blog_blogcategory` (`id`, `title`, `slug`) VALUES
(1, 'Business', 'business'),
(2, 'Develop', 'develop'),
(3, 'Software', 'software');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogpageseo`
--

CREATE TABLE `blog_blogpageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogs`
--

CREATE TABLE `blog_blogs` (
  `id` bigint(20) NOT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog_blogs`
--

INSERT INTO `blog_blogs` (`id`, `thumbnail`, `title`, `slug`, `author`, `description`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'blog_images/blog-1.jpg', 'Quisque Malesuada Sapien And Donec Sed Nunc.', 'quisque-malesuada-sapien-and-donec-sed-nunc', 'Rakib', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, <strong>pellentesque risus.</strong> Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv Pellentesque vel turp<strong>is vitae urna tincidunt hendrerit at ut est. Sed </strong>eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus. Proin sit amet arcu sem. dontami Phasellus ut pharetra purus, sed condimentum dui. Suspendisse potenti. Nam bibendum, augue europea ultricies semper, nisi lorem consectetur diam, nec dapibus nulla tortor at sem.</p>\r\n\r\n<h2><strong>Remarketing Strategy To Get Morelknoi Anda?</strong></h2>\r\n\r\n<p>VInterdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accu neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus v</p>\r\n\r\n<p>purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit.</p>\r\n\r\n<h1><strong>Purus at eros interdum, in dignissim nulla vestibulum.</strong></h1>\r\n\r\n<p>pellentesque quis magna eu vestibulum. Ut sed nec e commodo neque. Morbi erat nisi, vehicula porttitor egut, hendrerit vel tortor. In pharetra lectus luctus.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. S<strong>edan pellentesque quis m</strong>agna eu vestibulum. Ut sed commodo neque. Morbi <u>erat nisi, vehicula quis faucib</u>us il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokalporttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec toldelacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel j<strong>usto scelerisque, vestibulu</strong>m ultricies tellus. volv Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est.</p>', '2023-09-07', '2023-09-24', 1),
(2, 'blog_images/blog-2.jpg', 'Suspendisse Pretium Magna Qu Nisl Egestas Porttitor.', 'suspendisse-pretium-magna-qu-nisl-egestas-porttitor', 'Rakib', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, <strong>pellentesque risus.</strong> Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv Pellentesque vel turp<strong>is vitae urna tincidunt hendrerit at ut est. Sed </strong>eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus. Proin sit amet arcu sem. dontami Phasellus ut pharetra purus, sed condimentum dui. Suspendisse potenti. Nam bibendum, augue europea ultricies semper, nisi lorem consectetur diam, nec dapibus nulla tortor at sem.</p>\r\n\r\n<h2><strong>Remarketing Strategy To Get Morelknoi Anda?</strong></h2>\r\n\r\n<p>VInterdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accu neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus v</p>\r\n\r\n<p>purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit.</p>\r\n\r\n<h1><strong>Purus at eros interdum, in dignissim nulla vestibulum.</strong></h1>\r\n\r\n<p>pellentesque quis magna eu vestibulum. Ut sed nec e commodo neque. Morbi erat nisi, vehicula porttitor egut, hendrerit vel tortor. In pharetra lectus luctus.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. S<strong>edan pellentesque quis m</strong>agna eu vestibulum. Ut sed commodo neque. Morbi <u>erat nisi, vehicula quis faucib</u>us il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokalporttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec toldelacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel j<strong>usto scelerisque, vestibulu</strong>m ultricies tellus. volv Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est.</p>', '2023-09-05', '2023-09-07', 2),
(3, 'blog_images/blog-3.jpg', 'In A Augue Sit Amet Erat Suspel Eleifend Suscipit Issen.', 'in-a-augue-sit-amet-erat-suspel-eleifend-suscipit-issen', 'Rakib', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, <strong>pellentesque risus.</strong> Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv Pellentesque vel turp<strong>is vitae urna tincidunt hendrerit at ut est. Sed </strong>eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus. Proin sit amet arcu sem. dontami Phasellus ut pharetra purus, sed condimentum dui. Suspendisse potenti. Nam bibendum, augue europea ultricies semper, nisi lorem consectetur diam, nec dapibus nulla tortor at sem.</p>\r\n\r\n<h2><strong>Remarketing Strategy To Get Morelknoi Anda?</strong></h2>\r\n\r\n<p>VInterdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accu neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus v</p>\r\n\r\n<p>purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit.</p>\r\n\r\n<h1><strong>Purus at eros interdum, in dignissim nulla vestibulum.</strong></h1>\r\n\r\n<p>pellentesque quis magna eu vestibulum. Ut sed nec e commodo neque. Morbi erat nisi, vehicula porttitor egut, hendrerit vel tortor. In pharetra lectus luctus.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. S<strong>edan pellentesque quis m</strong>agna eu vestibulum. Ut sed commodo neque. Morbi <u>erat nisi, vehicula quis faucib</u>us il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokalporttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec toldelacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel j<strong>usto scelerisque, vestibulu</strong>m ultricies tellus. volv Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est.</p>', '2023-09-05', '2023-09-07', 3);

-- --------------------------------------------------------

--
-- Table structure for table `contact_contact`
--

CREATE TABLE `contact_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_contact`
--

INSERT INTO `contact_contact` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`) VALUES
(20, 'Rakib Hasan', 'krakib2002@gmail.com', '01781313825', 'Test', 'This is a test message that will submit to the TCG Agency\'s contact model.', '2023-09-20'),
(21, 'Ishrat Jahan Mou', 'ishratmourm@gmail.com', '01620673388', 'Project Query', 'Hello I want to know about your web development service', '2023-09-20'),
(22, 'Azim Hossain Tuhin', 'www.mdtuhin456@gmail.com', '012345678910', 'Alert Test', 'This is another contact', '2023-09-22'),
(23, 'Md Abu Sayed', 'code@admin.com', '111111346543', 'I want to change Primary domain', 'dfgdfg', '2023-10-09');

-- --------------------------------------------------------

--
-- Table structure for table `contact_contactpageseo`
--

CREATE TABLE `contact_contactpageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_contactpageseo`
--

INSERT INTO `contact_contactpageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'Contact Us', 'The CodeGrammer');

-- --------------------------------------------------------

--
-- Table structure for table `contact_subscriber`
--

CREATE TABLE `contact_subscriber` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `created_at` date NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_subscriber`
--

INSERT INTO `contact_subscriber` (`id`, `email`, `created_at`, `time`) VALUES
(26, 'test1@gmail.com', '2023-09-21', '19:03:04.811000'),
(28, 'test3@gm.com', '2023-09-21', '19:03:04.811000'),
(30, 'krakib2002@gmail.com', '2023-09-21', '19:03:04.811000'),
(31, 'itsraakibhasan@gmail.com', '2023-09-21', '01:08:05.182000'),
(32, 'marcos.evaristo35@gmail.com', '2023-10-14', '23:36:05.878794');

-- --------------------------------------------------------

--
-- Table structure for table `custompage_custompage`
--

CREATE TABLE `custompage_custompage` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custompage_custompage`
--

INSERT INTO `custompage_custompage` (`id`, `title`, `slug`, `content`) VALUES
(1, 'GDPR', 'gdpr', '<p>This is GDPR page content</p>');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(20, 'about', 'aboutpage'),
(18, 'about', 'aboutpageseo'),
(19, 'about', 'teamsection'),
(8, 'accounts', 'passwordresettoken'),
(6, 'accounts', 'user'),
(7, 'accounts', 'userprofile'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(23, 'blog', 'blogcategory'),
(25, 'blog', 'blogpageseo'),
(24, 'blog', 'blogs'),
(26, 'contact', 'contact'),
(28, 'contact', 'contactpageseo'),
(27, 'contact', 'subscriber'),
(4, 'contenttypes', 'contenttype'),
(38, 'custompage', 'custompage'),
(12, 'home', 'aboutsection'),
(16, 'home', 'clientsection'),
(13, 'home', 'funfactsection'),
(9, 'home', 'homepageseo'),
(14, 'home', 'projectcategory'),
(15, 'home', 'projectsection'),
(11, 'home', 'servicesection'),
(10, 'home', 'slidersection'),
(17, 'home', 'testimonialssection'),
(34, 'legal', 'policy'),
(35, 'legal', 'terms'),
(36, 'menus', 'primarymenu'),
(37, 'menus', 'submenu'),
(21, 'pricing', 'pricingpageseo'),
(22, 'pricing', 'pricingsection'),
(30, 'project', 'projectpageseo'),
(29, 'service', 'servicepageseo'),
(5, 'sessions', 'session'),
(31, 'settings', 'headerfootersetting'),
(32, 'settings', 'seosetting'),
(33, 'settings', 'websitesetting');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'about', '0001_initial', '2023-09-23 13:19:52.143594'),
(2, 'about', '0002_aboutpage', '2023-09-23 13:19:52.335941'),
(3, 'about', '0003_alter_aboutpage_years_of_experience', '2023-09-23 13:19:52.360463'),
(4, 'about', '0004_alter_aboutpage_years_of_experience', '2023-09-23 13:19:52.382204'),
(5, 'about', '0005_rename_button1_text_aboutpage_feature1_and_more', '2023-09-23 13:19:52.436707'),
(6, 'contenttypes', '0001_initial', '2023-09-23 13:19:52.519770'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-09-23 13:19:52.559661'),
(8, 'auth', '0001_initial', '2023-09-23 13:19:52.783024'),
(9, 'auth', '0002_alter_permission_name_max_length', '2023-09-23 13:19:52.798845'),
(10, 'auth', '0003_alter_user_email_max_length', '2023-09-23 13:19:52.811816'),
(11, 'auth', '0004_alter_user_username_opts', '2023-09-23 13:19:52.820825'),
(12, 'auth', '0005_alter_user_last_login_null', '2023-09-23 13:19:52.829029'),
(13, 'auth', '0006_require_contenttypes_0002', '2023-09-23 13:19:52.832972'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2023-09-23 13:19:52.842481'),
(15, 'auth', '0008_alter_user_username_max_length', '2023-09-23 13:19:52.855171'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2023-09-23 13:19:52.864532'),
(17, 'auth', '0010_alter_group_name_max_length', '2023-09-23 13:19:52.880161'),
(18, 'auth', '0011_update_proxy_permissions', '2023-09-23 13:19:52.901274'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2023-09-23 13:19:52.913057'),
(20, 'accounts', '0001_initial', '2023-09-23 13:19:53.486747'),
(21, 'accounts', '0002_passwordresettoken', '2023-09-23 13:19:53.590745'),
(22, 'accounts', '0003_alter_passwordresettoken_expiration_time', '2023-09-23 13:19:53.626886'),
(23, 'admin', '0001_initial', '2023-09-23 13:19:53.795119'),
(24, 'admin', '0002_logentry_remove_auto_add', '2023-09-23 13:19:53.814541'),
(25, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-23 13:19:53.832273'),
(26, 'blog', '0001_initial', '2023-09-23 13:19:54.022265'),
(27, 'blog', '0002_blogpageseo', '2023-09-23 13:19:54.074987'),
(28, 'blog', '0003_alter_blogs_created_at_alter_blogs_slug_and_more', '2023-09-23 13:19:54.106752'),
(29, 'blog', '0004_alter_blogs_slug_alter_blogs_title', '2023-09-23 13:19:54.123825'),
(30, 'contact', '0001_initial', '2023-09-23 13:19:54.236610'),
(31, 'contact', '0002_contactpageseo', '2023-09-23 13:19:54.287716'),
(32, 'contact', '0003_contact_created_at', '2023-09-23 13:19:54.343403'),
(33, 'contact', '0004_subscriber_created_at', '2023-09-23 13:19:54.368163'),
(34, 'contact', '0005_subscriber_time', '2023-09-23 13:19:54.395752'),
(35, 'home', '0001_initial', '2023-09-23 13:19:54.536607'),
(36, 'home', '0002_servicesection', '2023-09-23 13:19:54.609363'),
(37, 'home', '0003_aboutsection_alter_servicesection_options_and_more', '2023-09-23 13:19:54.731233'),
(38, 'home', '0004_funfactsection', '2023-09-23 13:19:54.806901'),
(39, 'home', '0005_projectcategory_projectsection', '2023-09-23 13:19:54.966264'),
(40, 'home', '0006_clientsection_alter_projectcategory_name', '2023-09-23 13:19:55.032996'),
(41, 'home', '0007_alter_clientsection_options', '2023-09-23 13:19:55.039571'),
(42, 'home', '0008_testimonialssection', '2023-09-23 13:19:55.141249'),
(43, 'home', '0009_aboutsection_image_aboutsection_video_thumbnail_and_more', '2023-09-23 13:19:55.226420'),
(44, 'home', '0010_alter_servicesection_detail_page_description_and_more', '2023-09-23 13:19:55.266695'),
(45, 'home', '0011_projectcategory_slug', '2023-09-23 13:19:55.303781'),
(46, 'home', '0012_projectsection_slug_servicesection_slug', '2023-09-23 13:19:55.369676'),
(47, 'home', '0013_alter_servicesection_detail_page_description', '2023-09-23 13:19:55.380981'),
(48, 'home', '0014_servicesection_show_call_now_widget', '2023-09-23 13:19:55.414552'),
(49, 'home', '0015_alter_projectsection_description', '2023-09-23 13:19:55.424680'),
(50, 'legal', '0001_initial', '2023-09-23 13:19:55.508569'),
(51, 'menus', '0001_initial', '2023-09-23 13:19:55.683233'),
(52, 'pricing', '0001_initial', '2023-09-23 13:19:55.881321'),
(53, 'pricing', '0002_pricingsection_button_text_pricingsection_button_url', '2023-09-23 13:19:55.948729'),
(54, 'project', '0001_initial', '2023-09-23 13:19:56.008830'),
(55, 'service', '0001_initial', '2023-09-23 13:19:56.067690'),
(56, 'sessions', '0001_initial', '2023-09-23 13:19:56.144013'),
(57, 'settings', '0001_initial', '2023-09-23 13:19:56.689653'),
(58, 'settings', '0002_rename_messenger_is_active_websitesetting_facebook_chat_is_active', '2023-09-23 13:19:56.705563'),
(59, 'settings', '0003_alter_headerfootersetting_footer_col1_description', '2023-09-23 13:19:56.716012'),
(60, 'settings', '0004_alter_headerfootersetting_footer_col1_description_and_more', '2023-09-23 13:19:56.731646'),
(61, 'settings', '0005_rename_logo_websitesetting_logo_dark_and_more', '2023-09-23 13:19:56.782063'),
(62, 'settings', '0006_remove_headerfootersetting_quick_link_description_and_more', '2023-09-23 13:19:56.819625'),
(63, 'settings', '0007_alter_headerfootersetting_facebook_and_more', '2023-09-23 13:19:56.909206'),
(64, 'settings', '0008_remove_seosetting_social_share_image', '2023-09-23 13:19:56.924472'),
(65, 'settings', '0009_alter_seosetting_meta_description_and_more', '2023-09-23 13:19:57.029017'),
(66, 'settings', '0010_websitesetting_map_iframe', '2023-09-23 13:19:57.056833'),
(67, 'settings', '0011_alter_websitesetting_map_iframe', '2023-09-23 13:19:57.105441'),
(68, 'settings', '0012_websitesetting_slider_particle_is_active', '2023-09-23 13:19:57.143581'),
(69, 'settings', '0013_websitesetting_custom_menu_is_active', '2023-09-23 13:19:57.187666'),
(70, 'settings', '0014_remove_websitesetting_custom_menu_is_active_and_more', '2023-09-23 13:19:57.255460'),
(71, 'settings', '0015_websitesetting_magic_cursor_is_active', '2023-09-23 13:19:57.303832'),
(72, 'settings', '0016_websitesetting_contact_form_image_and_more', '2023-09-23 13:19:57.350014'),
(73, 'about', '0006_alter_aboutpage_description_alter_aboutpage_feature1_and_more', '2023-10-29 19:02:29.662968'),
(74, 'blog', '0005_alter_blogs_author_alter_blogs_description_and_more', '2023-10-29 19:02:29.749666'),
(75, 'blog', '0006_alter_blogcategory_slug', '2023-10-29 19:02:29.782882'),
(76, 'contact', '0006_alter_contact_phone', '2023-10-29 19:02:29.805522'),
(77, 'custompage', '0001_initial', '2023-10-29 19:02:29.863385'),
(78, 'home', '0016_alter_aboutsection_experience_and_more', '2023-10-29 19:02:30.826881'),
(79, 'home', '0017_alter_projectsection_category', '2023-10-29 19:02:30.847532'),
(80, 'legal', '0002_alter_policy_policy_texts_alter_terms_term_texts', '2023-10-29 19:02:30.937460'),
(81, 'menus', '0002_alter_primarymenu_url_alter_submenu_url', '2023-10-29 19:02:31.033634'),
(82, 'pricing', '0003_alter_pricingsection_button_text_and_more', '2023-10-29 19:02:31.224418'),
(83, 'settings', '0017_alter_headerfootersetting_footer_col1_description_and_more', '2023-10-29 19:02:31.735466'),
(84, 'settings', '0018_websitesetting_show_call_now_widget', '2023-10-29 19:02:31.797684'),
(85, 'settings', '0019_websitesetting_twilio_auth_token_and_more', '2023-10-29 19:02:31.908728'),
(86, 'settings', '0020_rename_facebook_headerfootersetting_social1_link_and_more', '2023-10-29 19:02:32.219787');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('028g5wffhh6cauus30yf46cyedsjyvpf', 'e30:1qiDAz:pFLWKyxipEKIKYbaWEp7aGI6Vx3lvU9nYWU8mEkkT1g', '2023-10-02 12:16:29.390000'),
('0byj4mvx610e4wfboq1xs1l1wa3t9wad', '.eJxVjEEOgjAQRe_StWmGtpSOS_eegcx0BkFNSSisjHdXEha6_e-9_zI9bevYb1WXfhJzNq05_W5M-aFlB3Kncpttnsu6TGx3xR602uss-rwc7t_BSHX81pBJfFDBrBAxBB5aCNC4OABrQMqUGiQW13lGGFynAimh-siOUufN-wPz2zgA:1qo9ET:0zPgXR4JPB3OPnbbKfSrf4GXvw8od6mcYzQcLHmSbqI', '2023-10-18 21:16:37.816884'),
('0idxnff1sjz0x2ed0vrfxqd5j5zir9go', 'eyJsYXN0X3N1Ym1pc3Npb25fdGltZSI6IjIwMjMtMDktMjBUMTk6MDg6MDUuMTc1NTUxKzAwOjAwIn0:1qj2YP:qc4ZixoIikWXM2-b8GmkahjNnXEkAmhlnlYXSWFBV5Q', '2023-10-04 19:08:05.188000'),
('0juvypfddmhyv9bjcjkn16tiiqf1lxii', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qnF5X:Rgie4BQmJ68_8ROa3SV46TxrwKYUqebC4eZAW_kGoc8', '2023-10-16 09:19:39.863525'),
('0np0h6qrhnsx38lcjnnjmjkl1f6ddker', 'eyJsYXN0X3N1Ym1pc3Npb25fdGltZSI6IjIwMjMtMDktMTNUMTQ6NTE6NDguNTg1NjY1KzAwOjAwIn0:1qgRDY:Mq2Kc2sZx5I6q6AVTR2RSZEAwGpZ3SFlHmqz-Em3_28', '2023-09-27 14:51:48.593000'),
('0o8fgj6wiuqfwesnusbkkifuh4gsaowd', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qq8Rv:ADZM9nNMrUDNzUOyTjkVe7BafVykt2zZL0o46Cd9k0Y', '2023-10-24 08:50:43.634544'),
('0qz45ubbg7fh0kef2dfupjyhzn1w8thv', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qtTS2:Q92-SyPqeYqxeXsLIXp8_FMfKTenuIDvENPTgXhJxSQ', '2023-11-02 13:52:38.152405'),
('0r8g3b7vswlpk1thqpvx6fh54jt8tqv4', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qk6XS:WqQ3qqVMkgjkrm37BNCP4rKCAZ_9gK_YEZy6nQhrUdQ', '2023-10-07 17:35:30.786685'),
('1bbdt599bclfl2l4p9fhvb31km9h57rd', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qrEHv:5ilEpYtLK_LQfJugRsKuOJ-kmnhu6CS2ls5MVibdd1M', '2023-10-27 09:16:55.179624'),
('1haeewhtmc00qpt06zfd09qi4tw7gcxf', '.eJxVjEEOgjAQRe_StWmGtpSOS_eegcx0BkFNSSisjHdXEha6_e-9_zI9bevYb1WXfhJzNq05_W5M-aFlB3Kncpttnsu6TGx3xR602uss-rwc7t_BSHX81pBJfFDBrBAxBB5aCNC4OABrQMqUGiQW13lGGFynAimh-siOUufN-wPz2zgA:1qxAxg:gdBamJAXAFRMyoEW9bEcKGfmBaGI92tn_W77JtPuRMw', '2023-11-12 18:56:36.065206'),
('1l2i9bmkbt0eg0l8rsjpd55nsypeonzq', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qsfy4:MZZ7aI1fzamTKVZl4fRIRAKshnHnMBjGL02c0M9dhOU', '2023-10-31 09:02:24.397060'),
('28jm8u011pqvic4lzszcq2domuqsneeb', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qm1KQ:SFdvjmHNzCtfRmQq_Y0kQrpmXe9C4qRE1e3F3e_i8pQ', '2023-10-13 00:25:58.109248'),
('2cdve4fh8np0286scwmgy821mdmy1yow', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qtTB3:f5QRuxeAghkJ5WPyDoYKsuRvq-pjvNjuuOcEhHnrjsw', '2023-11-02 13:35:05.902576'),
('2yn4awiipbhf1u0a750u7c6crrzamai5', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qoGGf:1MNtQDzuzmAB-ZEhKie5CzAHsTXjAhkqG7OSEMiw36I', '2023-10-19 04:47:21.634557'),
('30v5a7rhbd7nwr47k3am0dhgxdim3p4t', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qoOvL:eJ3gy4zNCYeAsXKWNpS3AbQHU0Sf6ObBpxRVnlnJWVw', '2023-10-19 14:01:55.737914'),
('37pw42o70ichdx32xwv427dy8idthdmc', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qmGQS:zsec3RLL1PleUjxISQJd0KokMFFs3fiwBl5QWF1d5X4', '2023-10-13 16:33:12.136407'),
('39xsx3s0qgzk6urxnmlzx9kt9g1j2643', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qti8h:yQuiSSO57IMKLuaFhJ6VDmnHbws67wRFsVW7VtdWN9g', '2023-11-03 05:33:39.536966'),
('3f6hskkqep7uxxne0p9smrmx7l6kw6w0', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qlZco:GZkSt4K0Z1UY_ho9bjQ1Fo6OMep3lPV836uAuYkwbvQ', '2023-10-11 18:51:06.039671'),
('3l29vk9co0pht3ng89mlq334qwhh6xh6', '.eJxVjEEOgjAQRe_StWmGtpSOS_eegcx0BkFNSSisjHdXEha6_e-9_zI9bevYb1WXfhJzNq05_W5M-aFlB3Kncpttnsu6TGx3xR602uss-rwc7t_BSHX81pBJfFDBrBAxBB5aCNC4OABrQMqUGiQW13lGGFynAimh-siOUufN-wPz2zgA:1qqiOk:VzAmPVnU3r23Htg8gR7fxXdv4ryC_KMjlo5ItCT5CAs', '2023-10-25 23:13:50.199702'),
('3nravc0kwnb322c4lfoq12u11hex4xbz', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qtstC:eej6t8Jy6MEpjnfzJ04d1-HaC4nBYjkAf06TNiDvASI', '2023-11-03 17:02:22.617460'),
('4cdpw9iogi8x1shpz8x8d6u6mdh92v88', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qlryo:nEp14skNzJYOYLwSC6v2v0x6aDRraxKbh0sPARNk4jE', '2023-10-12 14:27:02.942030'),
('4sega7judrmtno1zf55xb6ijncgz0fc8', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qrS3H:_xGKCGqplGsjP3nZj6nD4zdnySd4-FeI-ewkYTBAySQ', '2023-10-27 23:58:43.383417'),
('4udnyqizskts6uji6xegmfq9gwsqj7o5', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qtJZx:WbwAjUAAbemb8siZAfpV6YHU-57lzgEeIyphkVoARYY', '2023-11-02 03:20:09.974106'),
('54djgnn0pz8g0op86rxo9slnes7dbjsv', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qnhmv:MxnwcrgTiDwmO8yAqZFsQx88lSNpAanZ-d4YQtCDtp8', '2023-10-17 15:58:21.249969'),
('5bn6p2xyr5sqxagot14cc3ts7odbdxw0', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qwjGG:kDLmUic5Wp6tXw6Xpuo4O0NZWA-MzMP1WRWF5FLGCGg', '2023-11-11 13:21:56.047348'),
('5ci1sz09qg85xlw2qrievg0bbr2w9zro', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qmFiS:2R8pBjpNEkRFZ6DlFurTkvyEJeIbQXM-cxSzwKjP1XI', '2023-10-13 15:47:44.635791'),
('5gw3gir09bmr3pegox05p2gh0luo3c4m', '.eJxVjDsOAiEUAO9CbQh_Hpb2e4YNjweyaiDZT2W8uyHZQtuZybzZHI-9zseW13khdmWaXX4ZxvTMbQh6xHbvPPW2rwvykfDTbnzqlF-3s_0b1LjVsS2ASGSTtQKlJ5FJkYwOPEoHQgYsXgEEa4ukAE4ZE5x2QscCpXjDPl_lrDde:1qn6t7:gZD2vWhrhMfb5X4uyhg0ZWOw54ioK_F42XQXwIo70Xs', '2023-10-16 00:34:17.638780'),
('5hug0eptf69cxrcv7birtjaso2mss5tm', '.eJxVjE0OwiAYBe_C2hCgIODSfc9Avh8qVQNJaVfGu2uTLnT7Zua9RIJtLWnreUkzi4vQ4vS7IdAj1x3wHeqtSWp1XWaUuyIP2uXYOD-vh_t3UKCXb02glCZnmHNmgOgZFHkclBsiWmAT7eAwIFmLBj1PzhmcSAdrzlkFK94fCtg4dg:1qjKex:7R1NNJf0A2gK2BNJmb_liFvtKvF5-eL2chIOSfXo-J8', '2023-10-05 14:28:03.769000'),
('5kbx4f0zxtyekcd5fiuw9altnwqv5jx9', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qwHWK:TJDYgB9m6gZV-_ttcID35MKkrzAh3KTJEouBISOINl0', '2023-11-10 07:44:40.838021'),
('5vpxi9ggyq1otyjxtyp73ijm0l2j2eu2', 'e30:1qiDAK:4UWd-Ia_DSyh39FnXVxzW_iby12ZzxMIt5nOUjiezWc', '2023-10-02 12:15:48.608000'),
('5x4m1vje7nfxovvjistowioku5oapx3l', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qlZ3L:XUy2XwzOdZnb0k3v3lY2brnV7EsRMWhxpIGbo8kzPn4', '2023-10-11 18:14:27.461617'),
('67jz0g3uuj6ow22cmalfjgqd8ozjnvhr', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qoEUE:Ohs-Id41GCZ2qKFaqeDP3FNxhvIxplWBJ1GC-dnFrks', '2023-10-19 02:53:14.533565'),
('74isc7xkgh2f59s9f1td6upb9k9zztcp', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qpB5w:zLuyMCIK7JPuej9FR4h39FRZnT4i3wZqGF4ZkNWUabk', '2023-10-21 17:28:04.013472'),
('74v7a90ac1gdcfmlgpmesn52tvcy909e', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qrbow:HBD_YY305vKbUTS5jN-cLwRtMMyuL8pODhQ70KByGzw', '2023-10-28 10:24:34.891823'),
('7erjex7mz1ki3dlc9w9boctjnc44bzpk', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qrIXq:Ve23Aw-XmCDViltGScLSjRDgpmWoXLaZCUGxC9Doduk', '2023-10-27 13:49:38.199602'),
('7q3h0mwi3vaonljg4ns069ki67nwy31r', 'eyJsYXN0X3N1Ym1pc3Npb25fdGltZSI6IjIwMjMtMDktMTNUMTU6MDg6NTAuNjU4MjYzKzAwOjAwIn0:1qgRU2:cYuNmvtIIdJnpJklRVjPXuK39NBDAF13XrKHKJAaVLs', '2023-09-27 15:08:50.693000'),
('7sg5el64xe0500i0gxjxszs4sg51skwl', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qmFh8:m8UOju5Wrz1L6Up_tfjRMPtjL73nwkPtGAcAVTw0NL0', '2023-10-13 15:46:22.424681'),
('7vsx2bdgrlhwbd5p2djyl2epmdxiwrlu', 'e30:1qiIwQ:u7qDFyBr1P_VeytY4PpUjM2FPHAO-hetjzq4xn_mH7M', '2023-10-02 18:25:50.604000'),
('7wj2qu18p4271ontacxzaday9rtz2gpz', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qt8Ao:ryT51cesnRR2KUyV_lvzZISAsgRpI3czzWjh99p28MQ', '2023-11-01 15:09:26.530630'),
('82lo8pxvqyqytk0by0sdwu3vtvrax9j4', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qlqYA:fsy7hVKgOYW2L6E6Uq4XN8QeyORWwVkbmPkdjfJ9FD8', '2023-10-12 12:55:26.606869'),
('867ub2ezzpht93ozn75xrp5yam6sjz6c', '.eJxVjEEOgjAQRe_StWmGtpSOS_eegcx0BkFNSSisjHdXEha6_e-9_zI9bevYb1WXfhJzNq05_W5M-aFlB3Kncpttnsu6TGx3xR602uss-rwc7t_BSHX81pBJfFDBrBAxBB5aCNC4OABrQMqUGiQW13lGGFynAimh-siOUufN-wPz2zgA:1qoGx7:t9gmKeve25OP3GZWK0OYOy1b8aEoahrue350Xt1iUhE', '2023-10-19 05:31:13.785884'),
('8c2eakjf249hhduqbc3xs4xn9wfw93zm', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qqdGQ:Tv87uTzIPRtCFn8EM7csi20RkyGa3YNN_O4x3YFqAqQ', '2023-10-25 17:44:54.959064'),
('8l433cx0ku3kgxqn6t7lu89xrmze4sz3', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qptVL:3ap9Q7zweqxx3v5_wsvoLwpmMopU1ecUZlkKys3Q1TU', '2023-10-23 16:53:15.816638'),
('8qn4ngu89qxdw38puj70t4ozo13e13w9', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1quBU1:TRTWlqPwRyyGzaTuua159GzHEL6_eF7Unc2kLXIJc8s', '2023-11-04 12:53:37.638805'),
('93wqlkntyx2whh33mag1kja45chmyzt8', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qpasK:bFuegclmVQyUyfFu5mUgxcRc0qbDEgJ9m2dzWXBh8pY', '2023-10-22 20:59:44.365159'),
('99ygjrhy1ctm3np5qiz6uzeg8t40ex8r', '.eJxVjDkOwjAUBe_iGlmWhTdKes5g_cUfB5AtxUkVcXeIlALaNzNvUxnWpeZ1lDlPrC7Kq9PvhkDP0nbAD2j3rqm3ZZ5Q74o-6NC3zuV1Pdy_gwqjfmtr0QeB4BgA2FkyJnk5ey_BOgrRJiwxckAC4wk5SSJTojhJKGiMen8A-s441g:1qs5vD:tmbdkZTLLw34CzwVT4klbMsGVJxtuCYRXQzBfYVUmpc', '2023-10-29 18:33:03.405510'),
('a4ls57djm7knwl53dg1btdlj2hy0lzwk', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qmtD6:50gxesOnYdgnOoEXRIGGMiAvo8VmWtIXfH648y6a3QQ', '2023-10-15 09:58:00.420743'),
('acu93m8qttnrks88knmwrwqhsme2i8o1', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qltXn:bSvHqkEmxLnRIMs5-u6tLXJhVlB4GS7yjaDuH1Bjxq0', '2023-10-12 16:07:15.701515'),
('akdyjdn24yw9xg6f0e2rma2nir5fnnsl', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qqLBo:DnC4dhWuShUint0TiiRMv_UjPgton2U16IQU1csbd1s', '2023-10-24 22:26:56.475641'),
('aqa35kxaobjv3iivv7r19juk2v3zmuly', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qu8AE:Axyyu3kbMQW5u9soJz1sTP8G0IN0Nb7B2Ha4ah6x9Rc', '2023-11-04 09:20:58.988456'),
('awp3wotj3ko4xga3kgqmohezykx5ka68', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qnRXv:9Jd8eglktLxSdknpQ4ukauIvwQG-tRyJAirZAEdyMu4', '2023-10-16 22:37:47.186555'),
('be146owquttj8gtyqb77sq54t2m3yolj', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qttOM:XU6CKzqu7jAmAtJ0dE0egwaL8xAo-anxjuNQ4ey3LJY', '2023-11-03 17:34:34.866646'),
('bgripd5m5g9blvz18y6hdrgc1vk9i230', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qsPDE:egXHUkBg2kwmlpq7x-4QwRXcgRjje0aKB25qKcSGa-w', '2023-10-30 15:08:56.536068'),
('brtvhub4auwodec4u0lqm9y8ik18j0fe', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qlyPI:RCZpUbT9Kf_vTvBowcJz6KjLzkugWKNlc3wcE5L1klM', '2023-10-12 21:18:48.042906'),
('c0kuzai0ypad5h4jymzrv2xl59mxqsyi', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qoRy8:BPlx_h9Y1acD297B2bEsTkxwWokNv3hrw2-d-2-4KyI', '2023-10-19 17:17:00.224632'),
('d0m33o95rhnc5l6sof1aqfpn4ynrsfh5', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1quIH3:VyO-YaRabElVDCyJrqkquuYVaKYsKNwzwNvXknDnKEE', '2023-11-04 20:08:41.054950'),
('d19v04pg0ji9eq0zx624xgi6lbsa8yd3', '.eJxVjb0OwjAQg98lM4p6KD8NIzvPEN3lDlJAidS0U8W7k0odQPJkf7Y3FXFdclybzHFidVGgTr8eYXpJ2QN-YnlUnWpZ5on0jugjbfpWWd7Xg_0byNhyb9uBkkACSkb8aAYUaxxycGDJ8ZnRGwcjYpBggJ03HODeBY6gv5D6fAHwnzhX:1qiDBT:u_tTeQTh1oJBWet-kITQ5HfobH8QgWH0IFKNLRL0v9g', '2023-10-02 12:16:59.632000'),
('d83ui49ls58isrj9h9st902ry60y7tfs', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qn51C:Zif_pQ6iB8uMhiwg0oczwY5j9HRxnWGR8eEeYjk0ccE', '2023-10-15 22:34:30.946038'),
('du8a54eenoln6idexmaq0i35ijetnp9e', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qnTbV:pSVAvQW96k-4BsHqITDMBku9NPdkHaz5lOmVLMNl6pI', '2023-10-17 00:49:37.358522'),
('duekk5qgggq4ogyiqvqxabntgoldwamm', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qnLsy:SK4UecgLnhaKZNb7yEZoP6h-_6cGkMLyFto9xxnlRQc', '2023-10-16 16:35:08.309078'),
('e18t2shvxkx5ecjec4fdnil6ofl83lw4', '.eJxVjEEOgjAQRe_StWmGtpSOS_eegcx0BkFNSSisjHdXEha6_e-9_zI9bevYb1WXfhJzNq05_W5M-aFlB3Kncpttnsu6TGx3xR602uss-rwc7t_BSHX81pBJfFDBrBAxBB5aCNC4OABrQMqUGiQW13lGGFynAimh-siOUufN-wPz2zgA:1qnl1f:SflQ5QhLQs7-ilHb2ZWK9KfE6pRFL3GilkQ9KSh30gk', '2023-10-17 19:25:47.352799'),
('e1aevncmw5zkuyyjdu1uu82c8yed5eyb', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qwx9N:8pEcnE3W22XUj7zoP3QkOp3GG53e4LG9xIU-ZZD_NBM', '2023-11-12 04:11:45.075971'),
('e37bmnes7i7yek32l1nouk2jif68x6g5', '.eJxVjbsOwjAUQ_8lKzS6eacd2dnYozxuaHi0UpNOiH-nlRhA8mQf2y_i_NpGt1ZcXElkIJIcf73g4x2nPUg3P11nGuepLSXQHaHftNLznPBx-rJ_A6Ov49buwfIos9LSaJ6CEBqDUaFHmw1jHK2ORqBVWucYFUPkYK3hOWUlbcJ-G3342tx-72NzdQ3PUmuZJ9fKE7cHDlx0DDroL8wMapOlRjIhxQFgACDvDwFzSsc:1qpuVy:MhTptXRySvPBhC560jHtSpBo2gp4ZdZlnohaguKfCsg', '2023-10-23 17:57:58.751567'),
('ejl9v9b0859lqvjz7fus2y0xwmqzjmny', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qsae5:ZQ2s04mE0K8hc5SjaxBxhx6fhrG1x3ncWVAl_6VaprA', '2023-10-31 03:21:25.910210'),
('ewbmc904e8qrzfi17o5qtbmvwdme9may', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qnTBL:YTMNG42IcO2NsdEYWgbgP1Nv-Qv6Q1CaglSPG2aBWEo', '2023-10-17 00:22:35.992624'),
('f38o5vfak8uisifp4cggaw698takj2ws', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qnOxn:Z3YedSBq92ODT2UowcPsoMRSfgIK9GnIT_fATbakKas', '2023-10-16 19:52:19.913147'),
('fadsbmz3s0ixi97v93iwnzqr6x32hdla', '.eJxVjLkOwjAQBf_FLcRa305Kejp6y8eaGHJIcVIh_p1EooD2zZt5Eee3tXdbxcWVRDoiyfl3Cz4-cTpAevjpPtM4T-tSAj0u9Esrvc4Jh8v3-xfofe13uwXLo8xKS6N5CkJoDEaFFm02jHG0OhqBVmmdY1QMkYO1hueUlbQJ2z06-Lq6uoWx1Frmya1lxL3MgYuGQcPkjZlO6A4U3U1tzAmgAyDvD3peR3w:1qriYX:H8WTHkfb0_G4fuk7REkYMcsR0P3RvuCsISNlHW4FV1w', '2023-10-28 17:36:05.882899'),
('fb0fotrnhtmwyuddb8mxly9vx2tsu2ft', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qrcMz:dd3m7tOivW6bdNqFdp3mYVnCyGADqwi9oO4ez2TqzZE', '2023-10-28 10:59:45.924676'),
('fi3vp8hhhamph6krhbsk26hqbmdsv6l3', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qqobo:ek3b1-bLWll9rG3ykEEDkgPff0s2p4a44zvK5MrzzO4', '2023-10-26 05:51:44.109320'),
('g0tkv2dug0w9irbu8snxlw5bdhi9ljk3', '.eJxVjEEOgjAQRe_StWmGtpSOS_eegcx0BkFNSSisjHdXEha6_e-9_zI9bevYb1WXfhJzNq05_W5M-aFlB3Kncpttnsu6TGx3xR602uss-rwc7t_BSHX81pBJfFDBrBAxBB5aCNC4OABrQMqUGiQW13lGGFynAimh-siOUufN-wPz2zgA:1qqNCu:pmhm3_qAhYxgufhScHyjjVtS5l-Bcni4Nd6W_Ki3Fys', '2023-10-25 00:36:12.872319'),
('g93j2f9gulu0ond2zvdockycktq3j5zq', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qm0Wt:XQJKl2d4w-SHXi6q7WvZWkYzdll-w3psmA5E181Ywdc', '2023-10-12 23:34:47.196927'),
('giqpyuzjot9qqvysno9a9ygobvz1zqkr', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qqRc0:jHwzww-ZdMZmiip5TurDbrW9LmohidB5u2XUoXaLYGY', '2023-10-25 05:18:24.018326'),
('gj3rc964hyd8d695zg9mv6cg0d9hnn2h', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qwncO:SxOIx5PvYfWs4omCUCOG7Iehm2xUv5JhmkctfLIG-u4', '2023-11-11 18:01:04.788258'),
('gkbjkg7yygq0s7k7v3mfzttns8shyjsd', '.eJxVjEEOgjAQRe_StWmGtpSOS_eegcx0BkFNSSisjHdXEha6_e-9_zI9bevYb1WXfhJzNq05_W5M-aFlB3Kncpttnsu6TGx3xR602uss-rwc7t_BSHX81pBJfFDBrBAxBB5aCNC4OABrQMqUGiQW13lGGFynAimh-siOUufN-wPz2zgA:1qvDbp:mL-_laerVHpuJpwbeNwJAfP8_C3J7BRFuz7FxJULy6M', '2023-11-07 09:21:57.101298'),
('gv9berczrzk5gtdvqm4wyiycf2x9uuhp', 'eyJsYXN0X2NvbnRhY3Rfc3VibWlzc2lvbl90aW1lIjoiMjAyMy0wOS0xOVQyMDoxNzo0NS4zMTI1NzcrMDA6MDAifQ:1qihAH:9BdhYDckc9nLGX1OLfrEOlxDmrqUe7wQSKgQ0KtTNiU', '2023-10-03 20:17:45.322000'),
('h9j98h9413lnvt4y5n5141e59ih84zsm', 'eyJsYXN0X2NvbnRhY3Rfc3VibWlzc2lvbl90aW1lIjoiMjAyMy0wOS0xOVQyMDoxNzoxMC4wNTU2OTUrMDA6MDAifQ:1qih9i:6WkO6OwWywDy7i8mS2V5oIwkwgEBz5M0fNmUhRnlxQ4', '2023-10-03 20:17:10.060000'),
('hnbbktop3mwgrjor7ljsgkzdnphrxyrr', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qpMfY:l7ZEE6mj6sl5NN-1EGRxZcqeM29vgKchtx7sdMBZBJw', '2023-10-22 05:49:36.524701'),
('hxh0dghpstei1x5l0mtqqgyoafmrk61y', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qrPFy:PiIJDZQ_0B9QihXH-x2iiCSQoI0UwKHTfXQ964UHRxY', '2023-10-27 20:59:38.157431'),
('hzepmd3ahwzozmhx73rgecejz0d6t6ie', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qnklL:mxUdSTGyRlEHYk1IsWHnwVMdCxwUHD2eVadpIFezAr0', '2023-10-17 19:08:55.036135'),
('igq0moln3jji39ok6kkmb2ikzz7jx3zx', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qqMGU:STlDZ1RO-yJ4LuXknzNw0GRMER46Wf6ORUtcUaUkKDU', '2023-10-24 23:35:50.106569'),
('ik8q8q9iivnzsh85doyet0s8chcytidf', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qlqfP:4LVgBHhZhdkl9OmvGgI8CRT6DxjQz4vshoNXp18bAJM', '2023-10-12 13:02:55.565745'),
('ion7f1fk54mog4dyebkkp5mkkgn405wx', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qt1VG:rtrpf-lxcMrlZIRtGXsmRT2AzvbMLKJXoUl6XpTMcno', '2023-11-01 08:02:06.193428'),
('iql4aanht9nzkvxirtp6dmm9221z7yr4', 'eyJsYXN0X2NvbnRhY3Rfc3VibWlzc2lvbl90aW1lIjoiMjAyMy0wOS0xOVQyMDoyNzowNC41NTE2ODkrMDA6MDAifQ:1qihJI:h9PXbNwUk0pesRGZAhwYFsmPITwOvg5xuAjK2zKPYx0', '2023-10-03 20:27:04.560000'),
('j879gda3epv6y4qe2ldjpolmue54pywo', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qnnCv:ov1XJoXpCiTVwzWtfeVs_pbuvSYL0DDvrLYeCqtI1iU', '2023-10-17 21:45:33.660038'),
('j8hbq20bvpt3tewc0v258t00vygece9l', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qmI2e:pEYpX-dccJiD4u2fFw_oYTqdpoEwgQOXuRE8nY0HnNQ', '2023-10-13 18:16:44.918891'),
('jq5vs3jk7dws4cs28acp31bw766x995b', '.eJxVjDsOwjAQBe_iFmKtf8ROSU9Hb-16DTGERMJJhbg7iZSG9s3M-4gB6xzrQq9Sa5nGOJdXFp3QoE0DoVH-qnynobNBOmVOBg4AHYA4iojL3Mel5ncsvCbqfyNMzzxugB843ieZpnF-F5KbInda5WXiPJx39--gx9qvdUIAlZxmzpkRQ8sIqSUDzgSyyDpY48hTspY0tXxzTtMtKW_1KYO34vsDzItISQ:1qiIx3:VBYveJP1rD08efqbO3G68V5CMJuFvgibAGNJn-IL7M8', '2023-10-02 18:26:29.130000'),
('jrlqwjpkk9ouifg5n2t9ymsqvkruckel', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qpU2A:NwdQ5lM3yIseooDRcVXCyAYkaU-ROvKLFkYYOJFq26A', '2023-10-22 13:41:26.314897'),
('k6jl36eqbxhz5zvu47xl1tnz0qvsx1ht', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qpatp:4KxbleHF1sK9xEcLbHSd1OtNEcWuYh8y90DFjsnfZ9o', '2023-10-22 21:01:17.810637'),
('l0d4jlccpt3l5p5gb3kksq3y3nxd5b1p', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qukAP:S9DHnhwNImx2B2Bf-ftAmyON21x7dnnqX_H9knpkeaw', '2023-11-06 01:55:41.307228'),
('l2b6n2bn4nmfvqog1s71bdzvon75wlzj', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qpxS0:VLdt4jLnnjZTbWgvCPGLnidp8oLWT2kDVVYbRuyQ38E', '2023-10-23 21:06:04.286599'),
('l3dy32ge858bmt2scvbe0pt2xdzbkswi', '.eJxVjEEOgjAQRe_StWmGtpSOS_eegcx0BkFNSSisjHdXEha6_e-9_zI9bevYb1WXfhJzNq05_W5M-aFlB3Kncpttnsu6TGx3xR602uss-rwc7t_BSHX81pBJfFDBrBAxBB5aCNC4OABrQMqUGiQW13lGGFynAimh-siOUufN-wPz2zgA:1qoKZ7:m4ZHhk1t2ie58uVKa9Yo5jSp5LT6coYKX1kjRBPAabk', '2023-10-19 09:22:41.661002'),
('l3ndc7w7ymf92z355lu6tcppo9axw7zv', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qldec:qK9tLkqlhRwqNjJAY05KIs-ZlbhyMBGdAVCWVYRbKRI', '2023-10-11 23:09:14.955254'),
('lg18rn9bjk9lwf68kzivjkahjjz252p2', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qtoaX:9-trOH2MVJyL97c0jIBIqQ7pINF0Hfl98E6gXqMDtGM', '2023-11-03 12:26:49.385960'),
('lxwmoa2suh5rrfs59w10bu7aocblnpwn', '.eJxVjbkOwjAQRP_FLWCt1zY5Sno6emvXa4g5Egk7FeLfSSQKaGfevHmpQHMdwlzSM2RRvTJq-5sxxVsa10KuNF4mHaexPjPrFdHftujjJOl--LJ_goHKsKwjAZjoUSQlIeoaIYgNW_C2Y0eCnbOeW47OMXIjZ--Rz9G0DvcJWrdI71RqWO8p1lBmfuRS8jSGmh9peUBAu4Nuh3gy2FvXg9fGmtY3G4AeQL0_cwpLjQ:1qjfMD:51BO-ejPOPrM_mB7u63eClg446NzYAPWkF88qvM-jfI', '2023-10-06 12:34:05.140000'),
('m2b51hy01zm2vmo6d5uhbefrbwaqg0jm', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qlwp2:gp-RNvil6FMSD-d54I3MYe7dzZ9luJdo_RzAdLbq78c', '2023-10-12 19:37:16.352116'),
('m8s9i0zdweforwroqt5qbm7o4smtiymc', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qoLlL:DiUiC4N-PzHuXb1GfUFBU5U0aSmdFcs0BzP-XM-MrlU', '2023-10-19 10:39:23.858170'),
('mn0im4lsy3mogt18o4ce97prskbr63q7', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qoLnq:RuK7AIWLhuqnI8iweI9JsLrlGA-Vdt5EN3NIKd_2gWQ', '2023-10-19 10:41:58.615592'),
('ms79ee27kr82jvg2k8tldxjx40e0u5hv', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qwEVp:SwrNh88LIA8ockBE6cyViCS2bODOtS8TbF11cRynaGU', '2023-11-10 04:31:57.168085'),
('nm7no4dklibqph06p7jm3tw6vuyzzi5g', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qtth1:TaX7-ORvPbe6R502fQ1Mplnfp3s41Kpc1Puo3bSY464', '2023-11-03 17:53:51.109484'),
('npkhxeb0e4m09id5b9yo96ah4tqdjvry', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qtlsG:Lj_9GegXXjB0ES1cOhgDNxtbJRzdVRBvC6bdW_k414M', '2023-11-03 09:32:56.955660'),
('nvvbnl2p4hgt14w0sxoevtffis4qxiup', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qo81H:YPHGkCywC5LtFd_cJFWSzAwLq5MACYTWl7ZLff4t5cw', '2023-10-18 19:58:55.091621'),
('o30io676zuw7xmfpj3wzo29l0thzomz4', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qpR9b:xv9Y67rpDSoRVCVyOq6gLx_KAZP22dMTD0ihjA6hkfk', '2023-10-22 10:36:55.253592'),
('p6t96neaxwjx1a1nqra7t1ppycemp5gn', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qo5gx:erJDVbO_-FOjpEuzhG03thzmh6W7tGG4Zo6DmQMKeeA', '2023-10-18 17:29:47.931775'),
('pl3sv08nrwnzdih2e1bdrczy8pyhnq7f', '.eJxVjEsKwjAUAO-StQRDXvsal-49Q0nex1QlgaZdiXeXQBe6nRnmbea4b3nem6zzwuZinDn9shTpKaULfsRyr5Zq2dYl2Z7YwzZ7qyyv69H-DXJsuW8h0KQDMkvQMSCx1ymcAT2TJg8qEFEkchopDSDgSAm9IvigbkDz-QIKPDjr:1qdQA8:HYOifp8YZUSKyvuS2ccpF31L8Wr6cT8pB7Tp6DyAC_4', '2023-09-19 07:07:48.234000'),
('pqo735kyjjwtrowyjdpiff5acs5tpf4d', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qso4B:eTeQKGFTI4v_uO-27KpB-UjTOb3FKpMKwDr-EKHpUAM', '2023-10-31 17:41:15.380974'),
('pvgsawd8nk08fyylmjbei0zi4eprrlbs', '.eJxVjEEOgjAQRe_StWmGtpSOS_eegcx0BkFNSSisjHdXEha6_e-9_zI9bevYb1WXfhJzNq05_W5M-aFlB3Kncpttnsu6TGx3xR602uss-rwc7t_BSHX81pBJfFDBrBAxBB5aCNC4OABrQMqUGiQW13lGGFynAimh-siOUufN-wPz2zgA:1qoy6C:1xx3wzNQ5qEeKQn2yU_iHYluf59LHTUrgs88HLBxI-8', '2023-10-21 03:35:28.704892'),
('qa85sc3a2bql2b961x9yp61xj2032ho5', 'eyJsYXN0X2NvbnRhY3Rfc3VibWlzc2lvbl90aW1lIjoiMjAyMy0wOS0xOVQyMDozMToyMy4xODE1MTUrMDA6MDAifQ:1qihNT:YDGd1pszH47xTouPmFkLUhrEa5Zjimj8p1Jo0mdapQA', '2023-10-03 20:31:23.193000'),
('qp3mxqp7itcnyjgnkpqbrvr9tsmdvv1f', '.eJxVjE0OwiAYBe_C2hCgIODSfc9Avh8qVQNJaVfGu2uTLnT7Zua9RIJtLWnreUkzi4vQ4vS7IdAj1x3wHeqtSWp1XWaUuyIP2uXYOD-vh_t3UKCXb02glCZnmHNmgOgZFHkclBsiWmAT7eAwIFmLBj1PzhmcSAdrzlkFK94fCtg4dg:1qjLNE:7hk_NbD5QwcurRmSI0nBURLnxFMmv0znA_hVd23Jbb0', '2023-10-05 15:13:48.659000'),
('r63tvd4cbg89imojgen29m9itn4v9ivm', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qv2Tt:CHXmgnMbrM8_iqJu0j0y6Gg5JKwLNbKU8tcQfTozl0Q', '2023-11-06 21:29:01.898641'),
('r65sz87wykvb75yehlwhof05cw8zzu5q', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qtoUb:211N8ujDhS5n9GNpDwVGvoibX1aRRSqP9sjSSESEqEs', '2023-11-03 12:20:41.939144'),
('rab0kvi78tsnqmd0t3txhfkgevnklhf9', 'eyJsYXN0X2NvbnRhY3Rfc3VibWlzc2lvbl90aW1lIjoiMjAyMy0wOS0xOVQxOTo0NzoyOS4zNjk2NjIrMDA6MDAifQ:1qiggz:_uFO4uG9jsOhQW1YOuZTqmnEey0xJlC0fXLlSixnZXo', '2023-10-03 19:47:29.382000'),
('rdfh8d1jmbz4o99wjs7hbmh74u32xhai', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qqx4V:M3b5PucX_Ii92ycKJIR_JX9fiAd6D2ML4okIJ5phrPE', '2023-10-26 14:53:55.909530'),
('rhnldginjmn8igjx96j9ca6ii47id7xl', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qsIDT:p0zbLwuFV0Uesc9OoHbUE4CDdc6qOEAXpW4vltua1ks', '2023-10-30 07:40:43.087973'),
('rku3cf0gt2mppoa8c87gqjobh6wgv4a5', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qrH2v:MKWUV-xA9gzPwy0cmP99VecfNyOsIVY3GTzSOeNQWTA', '2023-10-27 12:13:37.139532'),
('rq362h1iaesll0oj6qqs0635oqmjgnnu', 'eyJsYXN0X3N1Ym1pc3Npb25fdGltZSI6IjIwMjMtMDktMTNUMTU6MDE6MTEuMTc0NzY1KzAwOjAwIn0:1qgRMd:lS9xRK2FWoFqlrCIEqGv1Cup42bZLOEqZ9h3AbFlBhE', '2023-09-27 15:01:11.180000'),
('s1ig3rvwc1w6s6nlpzyu5hnl0115l5zm', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qqGMN:k1mJhblmeL841oUeYpke60fobCJJjO69SZurJ_Gr6qs', '2023-10-24 17:17:31.753379'),
('s7cziswcm7q61pdi64mz6n5f0esfiwlj', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qqISQ:ycFxZU8hg7dNm7ZW0M26tMYelOc3h8KRE0A1_rkRkTk', '2023-10-24 19:31:54.334684'),
('soolfo42cgkdcmjbxssl3oea9m053s3j', 'eyJsYXN0X2NvbnRhY3Rfc3VibWlzc2lvbl90aW1lIjoiMjAyMy0wOS0xOVQxOTo1NTozMS4wOTA2MzUrMDA6MDAifQ:1qigol:MIYHU2TGC_cL3R3zKAKEUdFhjfFADI1xLacNkehDEOg', '2023-10-03 19:55:31.100000'),
('sqc18m1rsotf4o8gkwcxuvnvuq9oxawx', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qrKtW:cCONTJvTZ0zYdzOwPddf4cAijSeMNjsrXb46tCahlqY', '2023-10-27 16:20:10.567057'),
('sv65ck1uachf1hitxk1nhrf90lpcq7ti', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qlvVS:ScUpe4b88TTw1_AL-ZsDYaxM26puBEBzXG3i8bIb4iY', '2023-10-12 18:12:58.245948'),
('sv902zdsy1czvyz3lr25yiemci8u5cfx', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qrsaW:LBGC_5Ficf300vwRJKRQZp7n8d-74o3YrC_OMEuPyy8', '2023-10-29 04:18:48.999366'),
('sx2bi0vyuxkl6dubu1gcw48p885cn1tk', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1quTzW:jjhi46BBTi0j98L7Xd_0dV0MeOA1WtV6yFkn2cx8gb0', '2023-11-05 08:39:22.620163'),
('tdnkrhtzddstce1b01q0hqm4d22w5dyl', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qs8AN:oIwIZbTLU9zKJa-vKZhcMqkNpiBR6qrXEK0pSlJGQ54', '2023-10-29 20:56:51.984685'),
('tjjal8fifwpo416xq9ggl9a6j545z0z5', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qmFhB:NGptRJw_BtgobZEGuvznf2hCuI3HZBDEz0GV70k1ZII', '2023-10-13 15:46:25.745824'),
('tnmdikbrcgbphk5w98cfl1a832vlekwj', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qlZhz:X-mz-BFdCcq4mvgduktFqzbAKx2GmjU_mHFtzNHsNew', '2023-10-11 18:56:27.826973'),
('to4l1mwxpori91cxxrsxknf6fn7xyh47', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qnabD:llaqFS3vemI7pFIDBhb8V4vGp1SOs7N-0LiOHDt5Xss', '2023-10-17 08:17:47.748586'),
('tpcac2q0i6h5ky2agutay089uk9jye51', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qoLnq:RuK7AIWLhuqnI8iweI9JsLrlGA-Vdt5EN3NIKd_2gWQ', '2023-10-19 10:41:58.975612'),
('u1eldxq7oqo6pb2lsil6u3xb6h8etsm9', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qt8eU:5qMqJ_-t28ElXXyqf2K4pXRoSWY5x87BTQ6nYqJZKcE', '2023-11-01 15:40:06.261799'),
('u7bahyefvkl3cu53akorwvikajnt76jc', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qqI4l:ca2GpWiNqZnLOro31M52RxMmXyjkFuvgeO4DcdnEo5I', '2023-10-24 19:07:27.687439'),
('ujiuydr47sedk389cx27bs63sij3ddol', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qwpcO:YA_wxCWMkrlqaa7zM_kocL1vTcli6nbu1nN3t5u9boc', '2023-11-11 20:09:12.345225'),
('uon8wn9btsw288mracsdts87g30fzzur', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qq3xT:Q4kFxKi2lS8KEPwiKudihLX6oMwYDa4o4Ks5960ws00', '2023-10-24 04:02:59.577696'),
('usnckt8shbid39apto1zj4pk0k74uszb', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qwPfb:44C9HxlgD_ZAL4pt3oxC0dRW6kZTW-II87H6HrU0KKI', '2023-11-10 16:26:47.624152'),
('uzbqczxzzrfpl9h2d488a5r55rnymcsa', 'eyJsYXN0X2NvbnRhY3Rfc3VibWlzc2lvbl90aW1lIjoiMjAyMy0wOS0xOVQxOTo1MjozOC44Mjc2NTUrMDA6MDAifQ:1qigly:ieujH9fzbN51VztMq5Emb9vh0B0kh63LYYZFacCbJb4', '2023-10-03 19:52:38.837000'),
('v09apwiz1mqoannj52tdz33xl8lmv45p', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qlyvL:aXspTAJ_-c1elSJiEh35AzvN9sny7sZ8TxnQtLDaw_0', '2023-10-12 21:51:55.407688'),
('v7domewkbjuzx2u67oehogzgjh0plab7', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qr63R:eHsyeOl46PpWQVpjHy47ht_dWY8BFtW8zXWEoR9fPFg', '2023-10-27 00:29:25.087667'),
('vk85svchexap62ekdf3r51sssyulz7gp', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qm15Z:EA_VXqZ8zkOL_Zx1iOtjf7r4TqYzxzPPMFi3DJzZHpg', '2023-10-13 00:10:37.721710'),
('vstms1ulgclr9vd8p9gtbtu5oau6inar', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qo8NU:ufJWXXLKs4RvFSA3sWsnndgjdf71Eer-1MGLccGGsAU', '2023-10-18 20:21:52.541344'),
('vwtnnr32aysv2rdgst0ooua1y89t0rmd', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qsit7:Sx2pZjOlp31uPHj0SljCoeetkjLN2eR_zcfJSAwF7pk', '2023-10-31 12:09:29.842775'),
('w9wwto7vklvacnudm7c04k3fv7m5tezw', '.eJxVjDsOAiEUAO9CbQh_Hpb2e4YNjweyaiDZT2W8uyHZQtuZybzZHI-9zseW13khdmWaXX4ZxvTMbQh6xHbvPPW2rwvykfDTbnzqlF-3s_0b1LjVsS2ASGSTtQKlJ5FJkYwOPEoHQgYsXgEEa4ukAE4ZE5x2QscCpXjDPl_lrDde:1qmBdv:V7k9u4Qv1Lk8smc3gznZXJZVEinOiPkF_UzlzSrAOz0', '2023-10-13 11:26:47.097741'),
('wepj0inlkt1csjqe9ho2smlg2n1v4dgx', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qwJQk:0ewCRiUaz0jV7WiXC3tJtPLlhJiGiIeEW-cuJJvP7P4', '2023-11-10 09:47:02.610454'),
('wg4d6mjh0rt1tfvwgdxpalc8x5u3bl1c', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qr8ea:U4cAurXgpzR3hlid-y-9FTTPMez896TnWKgh-82kUbE', '2023-10-27 03:15:56.285699'),
('wkfhv8fval2id7x86ibjo2y3ul1ekf8c', '.eJxVjEEOgjAQRe_StWmg03asS_ecgcxMB4saSCisjHdXEha6_e-9_zI9bWvpt6pLP2ZzMa05_W5M8tBpB_lO0222Mk_rMrLdFXvQars56_N6uH8HhWr51ixA7IKwooMh5hxgOHuPKYmghhhYImiLioJNDk0C8KCIFJ1rIyXz_gD3nTex:1qhx6e:9JbZdtqtB5wijLN7pO7zQj2vb6FW9RfC8_6ZgDVi5gY', '2023-10-01 19:06:56.463000'),
('x1w8p9bw5ytc46x5dn6s907cjeueddvr', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qqQ1S:uI7HejV0G5iby75nzQ-cJKbfsD3aonz9bLmNhCRd59I', '2023-10-25 03:36:34.276960'),
('x759vnwqp8w8dol1ejto3zwisygx967e', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qwczB:5zsKkEOKKfIChWo9XLanK1nUVzoqR0gqZt99hsliLpg', '2023-11-11 06:39:53.198638'),
('xi5f0xiw4nhzykgukfhllkq65ed7en0k', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1quxQa:BOLZYRAxqC5po82PPPDTYoAVUKU65p0NwTSkcTndTw8', '2023-11-06 16:05:16.833445'),
('xtsmbt68ny7889npmwttbxeuworxgoab', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qmFhZ:DMBc7191Q9sO-tMHCP0nzA7ATYKAaidtEaZ_dtgUAro', '2023-10-13 15:46:49.519225'),
('xuanpve19pnyj10mxh24xtj4oyqgohz0', '.eJxVjEsKwjAUAO-StQRDXvsal-49Q0nex1QlgaZdiXeXQBe6nRnmbea4b3nem6zzwuZinDn9shTpKaULfsRyr5Zq2dYl2Z7YwzZ7qyyv69H-DXJsuW8h0KQDMkvQMSCx1ymcAT2TJg8qEFEkchopDSDgSAm9IvigbkDz-QIKPDjr:1qc5Lg:-9_aO5xZqievXpwf73_wOZG8fKMw-QOz8VoYLkQqq2Q', '2023-09-15 14:42:12.253000'),
('xxux278wrsj6r3r4cdmrccdbnf1vj3wu', '.eJxVjEEOgjAQRe_StWmGtpSOS_eegcx0BkFNSSisjHdXEha6_e-9_zI9bevYb1WXfhJzNq05_W5M-aFlB3Kncpttnsu6TGx3xR602uss-rwc7t_BSHX81pBJfFDBrBAxBB5aCNC4OABrQMqUGiQW13lGGFynAimh-siOUufN-wPz2zgA:1qvAYZ:FsnjbbqGfrV0-tyc7RFicks8Ebgr_qPO8lauUWEp37A', '2023-11-07 06:06:23.549434'),
('yp7gmn9quq6ee46xb902u482svffmshc', '.eJxVjEsKwjAUAO-StQRDXvsal-49Q0nex1QlgaZdiXeXQBe6nRnmbea4b3nem6zzwuZinDn9shTpKaULfsRyr5Zq2dYl2Z7YwzZ7qyyv69H-DXJsuW8h0KQDMkvQMSCx1ymcAT2TJg8qEFEkchopDSDgSAm9IvigbkDz-QIKPDjr:1qbaQr:vXXOAUKbgTKBsyqSDx9dcqxZgg9HfgDnJj8Q3fKErNU', '2023-09-14 05:41:29.781000'),
('ytfk7gewwn6ghxfnttuuinm8q90i8rgt', '.eJxVjEEOgjAQRe_StWmGtpSOS_eegcx0BkFNSSisjHdXEha6_e-9_zI9bevYb1WXfhJzNq05_W5M-aFlB3Kncpttnsu6TGx3xR602uss-rwc7t_BSHX81pBJfFDBrBAxBB5aCNC4OABrQMqUGiQW13lGGFynAimh-siOUufN-wPz2zgA:1qrPIf:0eo2xRSOKn9oKyOXQ-dPFg18US1JB9kwMXmaPE-ITKg', '2023-10-27 21:02:25.135281'),
('yumduhvco8lm0vf9shud7zxtzxg739pf', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qnXiP:fNhVlxboVAY1NPGQTdufSa0Paa8CkqZNymbAEO3AaOY', '2023-10-17 05:13:01.447735'),
('ywpgs3pyf9qb6c0qyygbi0h1lgc1aytx', '.eJxVjLkOwjAQBf_FLcTadeIjKenp6C0fa2LIIcVJhfh3EokC2jfz5sWs29beboUWmyPrWMPOv5t34UnTAeLDTfeZh3lal-z5ofAvLfw6RxouX_cv0LvS7-8WjAhNkqrRSkRf14q8lr4lkzSiIKOCrslIpVIIEokEGKNFikk2JlK7RwdXVls2P-ZS8jzZNY-0lwWIukKoEG-AHbadUBzQaFQngA6AvT95C0do:1qqNsk:GqHb3R-0CapoIc1I_6SNp5Qu_nn-1Unle_uZTwhheFY', '2023-10-25 01:19:26.020478'),
('z25jc5u9lni777clz34syw5hrlt8c2pa', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qpdXa:ndsFxPEW_71Y9Jn1wzUF7BOSmGDmD1bewyLyqEhPbuE', '2023-10-22 23:50:30.936260'),
('zgvbwcuwpfx3s8kft59rf8o4oe3rzjvd', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qm3pY:1bk_9m_HcQmmpPU6yl1eEzaEEKE0JV11v8ljpaZR1pM', '2023-10-13 03:06:16.255975'),
('zqbqagnjivk2a993vhfa2kzn1453lgvm', '.eJxVjMsOwiAQRf-FtSEUkIdL9_0GMswMUjU0Ke3K-O_apAvd3nPOfYkE21rT1nlJE4mLGMTpd8uAD247oDu02yxxbusyZbkr8qBdjjPx83q4fwcVev3WjA4iGeRstVYmaO0H5ZzyDhwiZC5Z-WBIFVsoxjOSC9qraC1mz2zE-wPnjzgE:1qlfg3:GxG6_AnfcgeUABhhoYbI2y-qSIvUM9ac_bnA1q2olzU', '2023-10-12 01:18:51.831413'),
('zr8g9aas8q6qcntk1mn1i1zby6e1i5gf', '.eJxVjE0OwiAYBe_C2hCgIODSfc9Avh8qVQNJaVfGu2uTLnT7Zua9RIJtLWnreUkzi4vQ4vS7IdAj1x3wHeqtSWp1XWaUuyIP2uXYOD-vh_t3UKCXb02glCZnmHNmgOgZFHkclBsiWmAT7eAwIFmLBj1PzhmcSAdrzlkFK94fCtg4dg:1qjMVi:o0qJmUNk4PGCsnGwRU5_qVfUt1l1OmeT4vDbnRPaegE', '2023-10-05 16:26:38.106000'),
('zwnrxwcy151bju7u4o3puldel94fjtc2', '.eJxVjMsOwiAQRf-FtSHlPbh07zcQGAapGkhKuzL-uzbpQrf3nHNfLMRtrWEbtIQ5szPT7PS7pYgPajvI99hunWNv6zInviv8oINfe6bn5XD_Dmoc9Vv7CSTqYqx2VuaklKXkTPIExQkhCSw6RWCsLYhGEMkJwMmSi9GQybP3B85qN6Q:1qsHS4:VVuuHZThX1GnSBjDrX2n7mytLQXrwSP7iqhZ3LI_haI', '2023-10-30 06:51:44.482102');

-- --------------------------------------------------------

--
-- Table structure for table `home_aboutsection`
--

CREATE TABLE `home_aboutsection` (
  `id` bigint(20) NOT NULL,
  `subtitle` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `short_description` varchar(200) DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `ranking_number` int(11) DEFAULT NULL,
  `tag_line` varchar(200) DEFAULT NULL,
  `experience` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `video_thumbnail` varchar(100) DEFAULT NULL,
  `video_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `home_aboutsection`
--

INSERT INTO `home_aboutsection` (`id`, `subtitle`, `title`, `short_description`, `long_description`, `ranking_number`, `tag_line`, `experience`, `image`, `video_thumbnail`, `video_url`) VALUES
(1, 'Get To Know', 'About Us', 'We Do Design, Code & Develop Software Finally Launch.', 'Integer purus odio, placerat nec rhoncus in, ullamcorper nec dolor. Class onlin aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos only himenaeos. Praesent nec neque at dolor venenatis consectetur eu quis ex. the Donec lacinia placerat felis non aliquam.', 1, 'Best Creative IT Agency And Solutions', 'Since 2005.', 'AboutSection/about-baner-1.jpg', 'AboutSection/about-baner-2.jpg', 'https://www.youtube.com/watch?v=lQjtQmnxw3o');

-- --------------------------------------------------------

--
-- Table structure for table `home_clientsection`
--

CREATE TABLE `home_clientsection` (
  `id` bigint(20) NOT NULL,
  `client_name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `home_clientsection`
--

INSERT INTO `home_clientsection` (`id`, `client_name`, `image`) VALUES
(1, 'client1', 'Clients/partner-1.png'),
(2, 'client2', 'Clients/partner-2.png'),
(3, 'client3', 'Clients/partner-3.png'),
(4, 'client4', 'Clients/partner-4.png'),
(5, 'client5', 'Clients/partner-5.png');

-- --------------------------------------------------------

--
-- Table structure for table `home_funfactsection`
--

CREATE TABLE `home_funfactsection` (
  `id` bigint(20) NOT NULL,
  `fontawesome_icon_class` varchar(200) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `count_after` varchar(20) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `home_funfactsection`
--

INSERT INTO `home_funfactsection` (`id`, `fontawesome_icon_class`, `count`, `count_after`, `title`) VALUES
(1, 'far fa-handshake', 150, '+', 'Project Completed'),
(2, 'fas fa-smile', 229, '+', 'Satisfied Clients'),
(3, 'fas fa-users', 99, '+', 'Expert Teams'),
(4, 'fas fa-award', 4, '+', 'Win Awards');

-- --------------------------------------------------------

--
-- Table structure for table `home_homepageseo`
--

CREATE TABLE `home_homepageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `home_homepageseo`
--

INSERT INTO `home_homepageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'The CodeGrammer', 'Best Web & Application Developer in Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `home_projectcategory`
--

CREATE TABLE `home_projectcategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `home_projectcategory`
--

INSERT INTO `home_projectcategory` (`id`, `name`, `slug`) VALUES
(1, 'Software', 'software'),
(4, 'UI/UX', 'uiux'),
(5, 'Web Design', 'web-design'),
(6, 'Developing', 'developing'),
(7, 'Graphic Design', 'graphic-design');

-- --------------------------------------------------------

--
-- Table structure for table `home_projectsection`
--

CREATE TABLE `home_projectsection` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `client` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `home_projectsection`
--

INSERT INTO `home_projectsection` (`id`, `image`, `title`, `description`, `client`, `company`, `duration`, `category_id`, `slug`) VALUES
(4, 'Projects/project-1_civ0oLG.jpg', 'Desktop Mockup', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. <strong>Etiam eu nibh elementum, accumsan ona neque ac, </strong>aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus.</p>', 'Argova Josen', 'Egens Theme', '5 Days', 4, 'desktop-mockup'),
(5, 'Projects/project-2.jpg', 'Creative Agency', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. <strong>Etiam eu nibh elementum, accumsan ona neque ac, </strong>aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus.</p>', 'Argova Josen', 'Egens Theme', '5 Days', 5, 'creative-agency'),
(6, 'Projects/project-3.jpg', 'Mobile Crypto Wallet', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. <strong>Etiam eu nibh elementum, accumsan ona neque ac, </strong>aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus.</p>', 'Argova Josen', 'Egens Theme', '5 Days', 1, 'mobile-crypto-wallet'),
(7, 'Projects/project-4.jpg', 'E-Shop Ecommerce', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. <strong>Etiam eu nibh elementum, accumsan ona neque ac, </strong>aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus.</p>', 'Argova Josen', 'Egens Theme', '5 Days', 6, 'e-shop-ecommerce'),
(8, 'Projects/project-5.jpg', 'Art Deco Cocktails', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. <strong>Etiam eu nibh elementum, accumsan ona neque ac, </strong>aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus.</p>', 'Argova Josen', 'Egens Theme', '5 Days', 4, 'art-deco-cocktails'),
(9, 'Projects/project-6.jpg', 'Low Poly Base Mesh', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. <strong>Etiam eu nibh elementum, accumsan ona neque ac, </strong>aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus.</p>', 'Argova Josen', 'Egens Theme', '5 Days', 7, 'low-poly-base-mesh');

-- --------------------------------------------------------

--
-- Table structure for table `home_servicesection`
--

CREATE TABLE `home_servicesection` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `short_description` varchar(500) DEFAULT NULL,
  `fontawesome_icon_class` varchar(100) DEFAULT NULL,
  `detail_page_image` varchar(100) DEFAULT NULL,
  `detail_page_description` longtext DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `show_call_now_widget` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `home_servicesection`
--

INSERT INTO `home_servicesection` (`id`, `name`, `short_description`, `fontawesome_icon_class`, `detail_page_image`, `detail_page_description`, `slug`, `show_call_now_widget`) VALUES
(1, 'Web Design', 'Integer purus odio, placerat nec rhoncu in, ullamcorper nec dolor.', 'fas fa-laptop-code', 'Services/blog-thumnail.jpg', '<p><strong>Interdum et malesuada fames</strong> ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nlpurus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedanpellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il<br />\r\n<br />\r\nut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque,<br />\r\n<br />\r\nvestibulum ultricies tellus. volv Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac,</p>', 'web-design', 1),
(2, 'UI/UX Design', 'Integer purus odio, placerat nec rhoncu in, ullamcorper nec dolor.', 'far fa-object-group', '', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nlpurus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedanpellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il\r\n<br><br>\r\nut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque,\r\n<br><br>\r\nvestibulum ultricies tellus. volv Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac,', 'uiux-design', 1),
(3, 'Software Development', 'Integer purus odio, placerat nec rhoncu in, ullamcorper nec dolor.', 'fab fa-android', '', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nlpurus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedanpellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il\r\n<br><br>\r\nut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque,\r\n<br><br>\r\nvestibulum ultricies tellus. volv Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac,', 'software-development', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_slidersection`
--

CREATE TABLE `home_slidersection` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `subtitle` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `button1_text` varchar(100) DEFAULT NULL,
  `button1_url` varchar(500) DEFAULT NULL,
  `button2_text` varchar(100) DEFAULT NULL,
  `button2_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `home_slidersection`
--

INSERT INTO `home_slidersection` (`id`, `image`, `title`, `subtitle`, `description`, `button1_text`, `button1_url`, `button2_text`, `button2_url`) VALUES
(1, 'Home/hero-vector.png', 'Creative & Minimal', 'IT Agency.', 'Curabitur sed facilisis erat. Vestibulum pharetra eros eget fringilla porttitor. ol Duis a orci nunc. Suspendisse ac convallis sapien, quis commodo libero. Donec nec dui luctus, pellentesque lacus sed, mollis leo.', 'Pricing', 'pricing/', 'Projects', 'projects/'),
(2, 'Home/about-baner-1_MwbBiss.jpg', 'Best & Reliable', 'Creative IT.', 'Curabitur sed facilisis erat. Vestibulum pharetra eros eget fringilla porttitor. ol Duis a orci nunc. Suspendisse ac convallis sapien, quis commodo libero. Donec nec dui luctus, pellentesque lacus sed, mollis leo.', 'Contact us', 'contact-us/', 'Projects', 'projects/');

-- --------------------------------------------------------

--
-- Table structure for table `home_testimonialssection`
--

CREATE TABLE `home_testimonialssection` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `star` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `home_testimonialssection`
--

INSERT INTO `home_testimonialssection` (`id`, `name`, `position`, `description`, `image`, `star`) VALUES
(1, 'Martha Maldonado', 'Executive Chairman', 'Integer purus odio, placerat nec rhoncus in, ullamcorper nec dolor. ani aptent taciti sociosqu ad litora torquent per conubia nostra, per sonic himenaeos. Praesent nec neque at dolor venenatis consectetur europ Donec lacinia placerat felis non aliquam.', 'Testimonials/reivewer.jpg', 5),
(2, 'Kelly Smith', 'CEO', 'Integer purus odio, placerat nec rhoncus in, ullamcorper nec dolor. ani aptent taciti sociosqu ad litora torquent per conubia nostra, per sonic himenaeos. Praesent nec neque at dolor venenatis consectetur europ Donec lacinia placerat felis non aliquam.', 'Testimonials/reivewer-1.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `legal_policy`
--

CREATE TABLE `legal_policy` (
  `id` bigint(20) NOT NULL,
  `policy_texts` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `legal_policy`
--

INSERT INTO `legal_policy` (`id`, `policy_texts`) VALUES
(1, '<h1><strong>Privacy Policy for The CodeGrammer</strong></h1>\r\n\r\n<p>At The CodeGrammer, accessible from https://tcgagency.thecodegrammer.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by The CodeGrammer and how we use it.</p>\r\n\r\n<p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n\r\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in The CodeGrammer. This policy is not applicable to any information collected offline or via channels other than this website.</p>\r\n\r\n<h2><strong>Consent</strong></h2>\r\n\r\n<p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p>\r\n\r\n<h2><strong>Information we collect</strong></h2>\r\n\r\n<p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p>\r\n\r\n<p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p>\r\n\r\n<p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p>\r\n\r\n<h2>How we use your information</h2>\r\n\r\n<p>We use the information we collect in various ways, including to:</p>\r\n\r\n<ul>\r\n	<li>Provide, operate, and maintain our website</li>\r\n	<li>Improve, personalize, and expand our website</li>\r\n	<li>Understand and analyze how you use our website</li>\r\n	<li>Develop new products, services, features, and functionality</li>\r\n	<li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li>\r\n	<li>Send you emails</li>\r\n	<li>Find and prevent fraud</li>\r\n</ul>\r\n\r\n<h2><strong>Log Files</strong></h2>\r\n\r\n<p>The CodeGrammer follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services&#39; analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users&#39; movement on the website, and gathering demographic information.</p>\r\n\r\n<h2><strong>Cookies and Web Beacons</strong></h2>\r\n\r\n<p>Like any other website, The CodeGrammer uses &quot;cookies&quot;. These cookies are used to store information including visitors&#39; preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users&#39; experience by customizing our web page content based on visitors&#39; browser type and/or other information.</p>\r\n\r\n<h2><strong>Advertising Partners Privacy Policies</strong></h2>\r\n\r\n<p>You may consult this list to find the Privacy Policy for each of the advertising partners of The CodeGrammer.</p>\r\n\r\n<p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on The CodeGrammer, which are sent directly to users&#39; browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p>\r\n\r\n<p>Note that The CodeGrammer has no access to or control over these cookies that are used by third-party advertisers.</p>\r\n\r\n<h2><strong>Third Party Privacy Policies</strong></h2>\r\n\r\n<p>The CodeGrammer&#39;s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p>\r\n\r\n<p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers&#39; respective websites.</p>\r\n\r\n<h2><strong>CCPA Privacy Rights (Do Not Sell My Personal Information)</strong></h2>\r\n\r\n<p>Under the CCPA, among other rights, California consumers have the right to:</p>\r\n\r\n<p>Request that a business that collects a consumer&#39;s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p>\r\n\r\n<p>Request that a business delete any personal data about the consumer that a business has collected.</p>\r\n\r\n<p>Request that a business that sells a consumer&#39;s personal data, not sell the consumer&#39;s personal data.</p>\r\n\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<h2><strong>GDPR Data Protection Rights</strong></h2>\r\n\r\n<p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>\r\n\r\n<p>The right to access &ndash; You have the right to request copies of your personal data. We may charge you a small fee for this service.</p>\r\n\r\n<p>The right to rectification &ndash; You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p>\r\n\r\n<p>The right to erasure &ndash; You have the right to request that we erase your personal data, under certain conditions.</p>\r\n\r\n<p>The right to restrict processing &ndash; You have the right to request that we restrict the processing of your personal data, under certain conditions.</p>\r\n\r\n<p>The right to object to processing &ndash; You have the right to object to our processing of your personal data, under certain conditions.</p>\r\n\r\n<p>The right to data portability &ndash; You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p>\r\n\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<h2><strong>Children&#39;s Information</strong></h2>\r\n\r\n<p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p>\r\n\r\n<p>The CodeGrammer does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>\r\n\r\n<h2><strong>Changes to This Privacy Policy</strong></h2>\r\n\r\n<p>We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page.</p>\r\n\r\n<h2><strong>Contact Us</strong></h2>\r\n\r\n<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `legal_terms`
--

CREATE TABLE `legal_terms` (
  `id` bigint(20) NOT NULL,
  `term_texts` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `legal_terms`
--

INSERT INTO `legal_terms` (`id`, `term_texts`) VALUES
(1, '<h2><strong>Terms and Conditions</strong></h2>\r\n\r\n<p>Welcome to The CodeGrammer!</p>\r\n\r\n<p>These terms and conditions outline the rules and regulations for the use of The CodeGrammer&#39;s Website, located at https://tcgagency.thecodegrammer.com.</p>\r\n\r\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use The CodeGrammer if you do not agree to take all of the terms and conditions stated on this page.</p>\r\n\r\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: &quot;Client&quot;, &quot;You&quot; and &quot;Your&quot; refers to you, the person log on this website and compliant to the Company&#39;s terms and conditions. &quot;The Company&quot;, &quot;Ourselves&quot;, &quot;We&quot;, &quot;Our&quot; and &quot;Us&quot;, refers to our Company. &quot;Party&quot;, &quot;Parties&quot;, or &quot;Us&quot;, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&#39;s needs in respect of provision of the Company&#39;s stated services, in accordance with and subject to, prevailing law of bd. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\r\n\r\n<h3><strong>Cookies</strong></h3>\r\n\r\n<p>We employ the use of cookies. By accessing The CodeGrammer, you agreed to use cookies in agreement with the The CodeGrammer&#39;s Privacy Policy.</p>\r\n\r\n<p>Most interactive websites use cookies to let us retrieve the user&#39;s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\r\n\r\n<h3><strong>License</strong></h3>\r\n\r\n<p>Unless otherwise stated, The CodeGrammer and/or its licensors own the intellectual property rights for all material on The CodeGrammer. All intellectual property rights are reserved. You may access this from The CodeGrammer for your own personal use subjected to restrictions set in these terms and conditions.</p>\r\n\r\n<p>You must not:</p>\r\n\r\n<ul>\r\n	<li>Republish material from The CodeGrammer</li>\r\n	<li>Sell, rent or sub-license material from The CodeGrammer</li>\r\n	<li>Reproduce, duplicate or copy material from The CodeGrammer</li>\r\n	<li>Redistribute content from The CodeGrammer</li>\r\n</ul>\r\n\r\n<p>This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the&nbsp;<a href=\"https://www.termsandconditionsgenerator.com/\">Free Terms and Conditions Generator</a>.</p>\r\n\r\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. The CodeGrammer does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of The CodeGrammer,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, The CodeGrammer shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\r\n\r\n<p>The CodeGrammer reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\r\n\r\n<p>You warrant and represent that:</p>\r\n\r\n<ul>\r\n	<li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\r\n	<li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\r\n	<li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\r\n	<li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\r\n</ul>\r\n\r\n<p>You hereby grant The CodeGrammer a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\r\n\r\n<h3><strong>Hyperlinking to our Content</strong></h3>\r\n\r\n<p>The following organizations may link to our Website without prior written approval:</p>\r\n\r\n<ul>\r\n	<li>Government agencies;</li>\r\n	<li>Search engines;</li>\r\n	<li>News organizations;</li>\r\n	<li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\r\n	<li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\r\n</ul>\r\n\r\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party&#39;s site.</p>\r\n\r\n<p>We may consider and approve other link requests from the following types of organizations:</p>\r\n\r\n<ul>\r\n	<li>commonly-known consumer and/or business information sources;</li>\r\n	<li>dot.com community sites;</li>\r\n	<li>associations or other groups representing charities;</li>\r\n	<li>online directory distributors;</li>\r\n	<li>internet portals;</li>\r\n	<li>accounting, law and consulting firms; and</li>\r\n	<li>educational institutions and trade associations.</li>\r\n</ul>\r\n\r\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of The CodeGrammer; and (d) the link is in the context of general resource information.</p>\r\n\r\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party&#39;s site.</p>\r\n\r\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to The CodeGrammer. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\r\n\r\n<p>Approved organizations may hyperlink to our Website as follows:</p>\r\n\r\n<ul>\r\n	<li>By use of our corporate name; or</li>\r\n	<li>By use of the uniform resource locator being linked to; or</li>\r\n	<li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party&#39;s site.</li>\r\n</ul>\r\n\r\n<p>No use of The CodeGrammer&#39;s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\r\n\r\n<h3><strong>iFrames</strong></h3>\r\n\r\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\r\n\r\n<h3><strong>Content Liability</strong></h3>\r\n\r\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\r\n\r\n<h3><strong>Reservation of Rights</strong></h3>\r\n\r\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it&#39;s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\r\n\r\n<h3><strong>Removal of links from our website</strong></h3>\r\n\r\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\r\n\r\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\r\n\r\n<h3><strong>Disclaimer</strong></h3>\r\n\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\r\n\r\n<ul>\r\n	<li>limit or exclude our or your liability for death or personal injury;</li>\r\n	<li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n	<li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n	<li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n\r\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\r\n\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `menus_primarymenu`
--

CREATE TABLE `menus_primarymenu` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menus_primarymenu`
--

INSERT INTO `menus_primarymenu` (`id`, `name`, `url`, `order`) VALUES
(1, 'Home', '/', 1),
(2, 'About Us', '/about-us', 2),
(3, 'Services', '/services', 3),
(4, 'Projects', '/projects', 4),
(6, 'Pricing', '/pricing', 5),
(7, 'Blogs', '/blogs', 6),
(8, 'Contact Us', '/contact-us', 7);

-- --------------------------------------------------------

--
-- Table structure for table `menus_submenu`
--

CREATE TABLE `menus_submenu` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `parent_menu_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menus_submenu`
--

INSERT INTO `menus_submenu` (`id`, `name`, `url`, `parent_menu_id`) VALUES
(19, 'Sub 1', '/', 1),
(20, 'Sub 2', 'https://a-seohelp.com', 3),
(21, 'Sub 3', 'https://codecommerze.com/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pricing_pricingpageseo`
--

CREATE TABLE `pricing_pricingpageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pricing_pricingpageseo`
--

INSERT INTO `pricing_pricingpageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'Pricing', 'The CodeGrammer');

-- --------------------------------------------------------

--
-- Table structure for table `pricing_pricingsection`
--

CREATE TABLE `pricing_pricingsection` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `featured_text` varchar(100) DEFAULT NULL,
  `button_text` varchar(300) DEFAULT NULL,
  `button_url` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pricing_pricingsection`
--

INSERT INTO `pricing_pricingsection` (`id`, `title`, `subtitle`, `price`, `description`, `is_featured`, `featured_text`, `button_text`, `button_url`) VALUES
(1, 'Professional', 'Small team', '99.99', '<ul>\r\n	<li>10 Pages Responsive Website</li>\r\n	<li>5PPC Campaigns</li>\r\n	<li>10 SEO Keyword</li>\r\n	<li>5 Facebook Camplaigns</li>\r\n	<li>2 Video Camplaigns</li>\r\n</ul>', 0, NULL, 'PAY NOW', 'https://app.thecodegrammer.com'),
(2, 'Small Business', 'Single Business', '15.99', '<ul>\r\n	<li>5&nbsp;Pages Responsive Website</li>\r\n	<li>5 PPC Campaigns</li>\r\n	<li>10 SEO Keywords</li>\r\n	<li>5 Facebook Campaigns</li>\r\n	<li>2 Video Campaigns</li>\r\n</ul>', 1, 'Popular', 'PAY NOW', 'https://app.thecodegrammer.com'),
(3, 'Enterprice', 'Large Team', '120.99', '<ul>\r\n	<li>10 Pages Responsive Website</li>\r\n	<li>5PPC Campaigns</li>\r\n	<li>10 SEO Keyword</li>\r\n	<li>5 Facebook Camplaigns</li>\r\n	<li>2 Video Camplaigns</li>\r\n</ul>', 0, NULL, 'PAY NOW', 'https://app.thecodegrammer.com');

-- --------------------------------------------------------

--
-- Table structure for table `project_projectpageseo`
--

CREATE TABLE `project_projectpageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `project_projectpageseo`
--

INSERT INTO `project_projectpageseo` (`id`, `meta_title`, `meta_description`) VALUES
(2, 'Projects', 'The CodeGrammer');

-- --------------------------------------------------------

--
-- Table structure for table `service_servicepageseo`
--

CREATE TABLE `service_servicepageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `service_servicepageseo`
--

INSERT INTO `service_servicepageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'Services', 'The CodeGrammer');

-- --------------------------------------------------------

--
-- Table structure for table `settings_headerfootersetting`
--

CREATE TABLE `settings_headerfootersetting` (
  `id` bigint(20) NOT NULL,
  `header_button_text` varchar(200) DEFAULT NULL,
  `header_button_url` varchar(1000) DEFAULT NULL,
  `footer_col1_description` longtext DEFAULT NULL,
  `social1_link` varchar(1000) DEFAULT NULL,
  `social2_link` varchar(1000) DEFAULT NULL,
  `social3_link` varchar(1000) DEFAULT NULL,
  `footer_copyright` varchar(500) DEFAULT NULL,
  `social1_icon` varchar(200) DEFAULT NULL,
  `social2_icon` varchar(200) DEFAULT NULL,
  `social3_icon` varchar(200) DEFAULT NULL,
  `social4_icon` varchar(200) DEFAULT NULL,
  `social4_link` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings_headerfootersetting`
--

INSERT INTO `settings_headerfootersetting` (`id`, `header_button_text`, `header_button_url`, `footer_col1_description`, `social1_link`, `social2_link`, `social3_link`, `footer_copyright`, `social1_icon`, `social2_icon`, `social3_icon`, `social4_icon`, `social4_link`) VALUES
(1, 'Start Project', '/contact-us', 'Integer purus odio, placerat nec ande rhoncus in, ullamcorper nec dolor. on aptent taciti sociosqu.', 'https://facebook.com', 'https://instagram.com', 'https://linkedin.com', '© 2021. All rights reserved by <b>The CodeGrammer</b>', 'fab fa-facebook-f', 'fab fa-instagram', 'fab fa-linkedin-in', 'fab fa-youtube', 'https://youtube.com/thecodegrammer');

-- --------------------------------------------------------

--
-- Table structure for table `settings_seosetting`
--

CREATE TABLE `settings_seosetting` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `seo_keywords` longtext DEFAULT NULL,
  `meta_image` varchar(100) DEFAULT NULL,
  `tag_line` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings_seosetting`
--

INSERT INTO `settings_seosetting` (`id`, `meta_title`, `meta_description`, `seo_keywords`, `meta_image`, `tag_line`) VALUES
(1, 'The CodeGrammer', 'The CodeGrammer, as a web and mobile application development company, plays a significant role in the ever-expanding field of web technology in Bangladesh. They specialize in crafting web applications using Python Django, which is a high-level Python web framework known for its efficiency, scalability, and robustness.', 'software,application,marketer,developer', 'app_config/TCG_AGENCY.png', 'Best Web & Application Developer in Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `settings_websitesetting`
--

CREATE TABLE `settings_websitesetting` (
  `id` bigint(20) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `logo_dark` varchar(100) DEFAULT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `email_address` varchar(500) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `price_ragne` varchar(50) DEFAULT NULL,
  `address` varchar(700) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `country` varchar(300) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `postal` int(11) DEFAULT NULL,
  `analytics_code` varchar(300) DEFAULT NULL,
  `facebook_pixel_code` longtext DEFAULT NULL,
  `facebook_chat_code` longtext DEFAULT NULL,
  `whatsapp_is_active` tinyint(1) NOT NULL,
  `facebook_chat_is_active` tinyint(1) NOT NULL,
  `custom_css` longtext DEFAULT NULL,
  `custom_js` longtext DEFAULT NULL,
  `currency_name` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_light` varchar(100) DEFAULT NULL,
  `map_iframe` longtext DEFAULT NULL,
  `slider_particle_is_active` tinyint(1) NOT NULL,
  `default_menu_is_active` tinyint(1) NOT NULL,
  `magic_cursor_is_active` tinyint(1) NOT NULL,
  `contact_form_image` varchar(100) DEFAULT NULL,
  `show_call_now_widget` tinyint(1) NOT NULL,
  `twilio_auth_token` varchar(500) DEFAULT NULL,
  `twilio_from_number` varchar(15) DEFAULT NULL,
  `twilio_sid` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings_websitesetting`
--

INSERT INTO `settings_websitesetting` (`id`, `name`, `logo_dark`, `favicon`, `author`, `email_address`, `phone`, `price_ragne`, `address`, `city`, `country`, `state`, `postal`, `analytics_code`, `facebook_pixel_code`, `facebook_chat_code`, `whatsapp_is_active`, `facebook_chat_is_active`, `custom_css`, `custom_js`, `currency_name`, `currency_symbol`, `logo_light`, `map_iframe`, `slider_particle_is_active`, `default_menu_is_active`, `magic_cursor_is_active`, `contact_form_image`, `show_call_now_widget`, `twilio_auth_token`, `twilio_from_number`, `twilio_sid`) VALUES
(1, 'The CodeGrammer', 'app_config/logodark.png', 'app_config/facicon.png', 'The CodeGrammer', 'admin@gmail.com', '+8801245478487', '60$ to 7000$', 'NU', 'Gazipur', 'Bangladesh', 'Dhaka', 1704, 'GA_MEASUREMENT_ID', '', '', 1, 1, '', '', 'BDT', '৳', 'app_config/logolight.png', '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3646.419641253625!2d90.38046731467298!3d23.94559668449348!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c52979f8b7a5%3A0x78089acff1ed789f!2sThe%20CodeGrammer!5e0!3m2!1sen!2sus!4v1674327029775!5m2!1sen!2sus\" allowfullscreen=\"\"></iframe>', 1, 1, 1, 'app_config/call-center.png', 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_aboutpage`
--
ALTER TABLE `about_aboutpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_aboutpageseo`
--
ALTER TABLE `about_aboutpageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_teamsection`
--
ALTER TABLE `about_teamsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_passwordresettoken`
--
ALTER TABLE `accounts_passwordresettoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `accounts_passwordresettoken_user_id_2789bc5c_fk_accounts_user_id` (`user_id`);

--
-- Indexes for table `accounts_user`
--
ALTER TABLE `accounts_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `accounts_userprofile_slug_98d71aba` (`slug`);

--
-- Indexes for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_groups_user_id_group_id_59c0b32f_uniq` (`user_id`,`group_id`),
  ADD KEY `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq` (`user_id`,`permission_id`),
  ADD KEY `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `blog_blogcategory`
--
ALTER TABLE `blog_blogcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blogcategory_slug_7996de7a` (`slug`);

--
-- Indexes for table `blog_blogpageseo`
--
ALTER TABLE `blog_blogpageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_blogs`
--
ALTER TABLE `blog_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blogs_category_id_e3e6d3cc_fk_blog_blogcategory_id` (`category_id`),
  ADD KEY `blog_blogs_slug_64335c5e` (`slug`);

--
-- Indexes for table `contact_contact`
--
ALTER TABLE `contact_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_contactpageseo`
--
ALTER TABLE `contact_contactpageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_subscriber`
--
ALTER TABLE `contact_subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custompage_custompage`
--
ALTER TABLE `custompage_custompage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `home_aboutsection`
--
ALTER TABLE `home_aboutsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_clientsection`
--
ALTER TABLE `home_clientsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_funfactsection`
--
ALTER TABLE `home_funfactsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_homepageseo`
--
ALTER TABLE `home_homepageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_projectcategory`
--
ALTER TABLE `home_projectcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_projectcategory_slug_49e96be8` (`slug`);

--
-- Indexes for table `home_projectsection`
--
ALTER TABLE `home_projectsection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_projectsection_category_id_917bf621_fk_home_proj` (`category_id`),
  ADD KEY `home_projectsection_slug_e7eaabbe` (`slug`);

--
-- Indexes for table `home_servicesection`
--
ALTER TABLE `home_servicesection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_servicesection_slug_e5a4f9e3` (`slug`);

--
-- Indexes for table `home_slidersection`
--
ALTER TABLE `home_slidersection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_testimonialssection`
--
ALTER TABLE `home_testimonialssection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legal_policy`
--
ALTER TABLE `legal_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legal_terms`
--
ALTER TABLE `legal_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus_primarymenu`
--
ALTER TABLE `menus_primarymenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus_submenu`
--
ALTER TABLE `menus_submenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_submenu_parent_menu_id_bab1ba0d_fk_menus_primarymenu_id` (`parent_menu_id`);

--
-- Indexes for table `pricing_pricingpageseo`
--
ALTER TABLE `pricing_pricingpageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing_pricingsection`
--
ALTER TABLE `pricing_pricingsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_projectpageseo`
--
ALTER TABLE `project_projectpageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_servicepageseo`
--
ALTER TABLE `service_servicepageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_headerfootersetting`
--
ALTER TABLE `settings_headerfootersetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_seosetting`
--
ALTER TABLE `settings_seosetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_websitesetting`
--
ALTER TABLE `settings_websitesetting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_aboutpage`
--
ALTER TABLE `about_aboutpage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_aboutpageseo`
--
ALTER TABLE `about_aboutpageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_teamsection`
--
ALTER TABLE `about_teamsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `accounts_passwordresettoken`
--
ALTER TABLE `accounts_passwordresettoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `accounts_user`
--
ALTER TABLE `accounts_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `blog_blogcategory`
--
ALTER TABLE `blog_blogcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_blogpageseo`
--
ALTER TABLE `blog_blogpageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_blogs`
--
ALTER TABLE `blog_blogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_contact`
--
ALTER TABLE `contact_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `contact_contactpageseo`
--
ALTER TABLE `contact_contactpageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_subscriber`
--
ALTER TABLE `contact_subscriber`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `custompage_custompage`
--
ALTER TABLE `custompage_custompage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `home_aboutsection`
--
ALTER TABLE `home_aboutsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_clientsection`
--
ALTER TABLE `home_clientsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_funfactsection`
--
ALTER TABLE `home_funfactsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_homepageseo`
--
ALTER TABLE `home_homepageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_projectcategory`
--
ALTER TABLE `home_projectcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `home_projectsection`
--
ALTER TABLE `home_projectsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `home_servicesection`
--
ALTER TABLE `home_servicesection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_slidersection`
--
ALTER TABLE `home_slidersection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_testimonialssection`
--
ALTER TABLE `home_testimonialssection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `legal_policy`
--
ALTER TABLE `legal_policy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `legal_terms`
--
ALTER TABLE `legal_terms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus_primarymenu`
--
ALTER TABLE `menus_primarymenu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus_submenu`
--
ALTER TABLE `menus_submenu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pricing_pricingpageseo`
--
ALTER TABLE `pricing_pricingpageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pricing_pricingsection`
--
ALTER TABLE `pricing_pricingsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project_projectpageseo`
--
ALTER TABLE `project_projectpageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_servicepageseo`
--
ALTER TABLE `service_servicepageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_headerfootersetting`
--
ALTER TABLE `settings_headerfootersetting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_seosetting`
--
ALTER TABLE `settings_seosetting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_websitesetting`
--
ALTER TABLE `settings_websitesetting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_passwordresettoken`
--
ALTER TABLE `accounts_passwordresettoken`
  ADD CONSTRAINT `accounts_passwordresettoken_user_id_2789bc5c_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  ADD CONSTRAINT `accounts_userprofile_user_id_92240672_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD CONSTRAINT `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `accounts_user_groups_user_id_52b62117_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD CONSTRAINT `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `accounts_user_user_p_user_id_e4f0a161_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `blog_blogs`
--
ALTER TABLE `blog_blogs`
  ADD CONSTRAINT `blog_blogs_category_id_e3e6d3cc_fk_blog_blogcategory_id` FOREIGN KEY (`category_id`) REFERENCES `blog_blogcategory` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `home_projectsection`
--
ALTER TABLE `home_projectsection`
  ADD CONSTRAINT `home_projectsection_category_id_917bf621_fk_home_proj` FOREIGN KEY (`category_id`) REFERENCES `home_projectcategory` (`id`);

--
-- Constraints for table `menus_submenu`
--
ALTER TABLE `menus_submenu`
  ADD CONSTRAINT `menus_submenu_parent_menu_id_bab1ba0d_fk_menus_primarymenu_id` FOREIGN KEY (`parent_menu_id`) REFERENCES `menus_primarymenu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
