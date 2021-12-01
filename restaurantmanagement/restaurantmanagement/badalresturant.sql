-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 01, 2021 at 05:47 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `badalresturant`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add gallery', 7, 'add_gallery'),
(26, 'Can change gallery', 7, 'change_gallery'),
(27, 'Can delete gallery', 7, 'delete_gallery'),
(28, 'Can view gallery', 7, 'view_gallery'),
(29, 'Can add profile', 8, 'add_profile'),
(30, 'Can change profile', 8, 'change_profile'),
(31, 'Can delete profile', 8, 'delete_profile'),
(32, 'Can view profile', 8, 'view_profile'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category'),
(37, 'Can add food', 10, 'add_food'),
(38, 'Can change food', 10, 'change_food'),
(39, 'Can delete food', 10, 'delete_food'),
(40, 'Can view food', 10, 'view_food'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add cart', 12, 'add_cart'),
(46, 'Can change cart', 12, 'change_cart'),
(47, 'Can delete cart', 12, 'delete_cart'),
(48, 'Can view cart', 12, 'view_cart');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$1egkzp2eWb77FH7AHBHU1D$pkbWnnU5jJsrtDaT3Ez4pWc+o5g2dMuEyGLxDApMlKk=', '2021-12-01 16:25:45.458764', 0, 'badal', '', '', 'badal@gmail.com', 1, 1, '2021-12-01 12:08:05.170449'),
(2, 'pbkdf2_sha256$260000$yZWh5MWGj6djMqTAV5ccBj$QcQ2fSNMm7YSIc/agAKRqXIX7XMkvB/l6yIaT8PPPa0=', '2021-12-01 16:20:31.812386', 0, 'abc', '', '', 'abc@gmail.com', 1, 1, '2021-12-01 13:14:30.184776');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'home', 'gallery'),
(8, 'home', 'profile'),
(12, 'menu', 'cart'),
(9, 'menu', 'category'),
(10, 'menu', 'food'),
(11, 'menu', 'order'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-12-01 12:02:56.970965'),
(2, 'auth', '0001_initial', '2021-12-01 12:02:57.826992'),
(3, 'admin', '0001_initial', '2021-12-01 12:02:58.006632'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-12-01 12:02:58.022586'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-12-01 12:02:58.038584'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-12-01 12:02:58.142672'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-12-01 12:02:58.219133'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-12-01 12:02:58.254079'),
(9, 'auth', '0004_alter_user_username_opts', '2021-12-01 12:02:58.268043'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-12-01 12:02:58.338664'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-12-01 12:02:58.343101'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-12-01 12:02:58.358653'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-12-01 12:02:58.393084'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-12-01 12:02:58.423678'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-12-01 12:02:58.461461'),
(16, 'auth', '0011_update_proxy_permissions', '2021-12-01 12:02:58.480435'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-12-01 12:02:58.510545'),
(18, 'home', '0001_initial', '2021-12-01 12:02:58.695040'),
(19, 'menu', '0001_initial', '2021-12-01 12:02:59.242675'),
(20, 'menu', '0002_auto_20210930_1213', '2021-12-01 12:02:59.331241'),
(21, 'sessions', '0001_initial', '2021-12-01 12:02:59.394509');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dbwuy4x365b9ius0q8ipb92elp6o9q67', '.eJxVjDsOwjAQBe_iGlnxdwMlfc4Q7a7XJIBsKU4qxN0hUgpo38y8lxpxW6dxa7KMc1IXZdTpdyPkh5QdpDuWW9Vcy7rMpHdFH7TpoSZ5Xg_372DCNn1rn10v55ytZHAdG7JRBELoTMcpkAFABAI26Dn0fXTexcQQvSe0BEm9P-zCOAE:1msOXZ:hnsGDI-ucqG8-05zlkxNyMPVJJ_4ip6XU7DHzRg8SJs', '2021-12-15 12:16:49.565560');

-- --------------------------------------------------------

--
-- Table structure for table `home_gallery`
--

CREATE TABLE `home_gallery` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `images` varchar(100) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_profile`
--

CREATE TABLE `home_profile` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_profile`
--

INSERT INTO `home_profile` (`id`, `username`, `email`, `firstname`, `lastname`, `phone`, `profile_pic`, `created_date`, `user_id`) VALUES
(1, 'badal', 'badal@gmail.com', '', '', '', 'static/default_user.png', '2021-12-01 12:08:05.949036', 1),
(2, 'abc', 'abc@gmail.com', 'badal123', 'phuyal12', '8418948415', 'static/profile/badal.jpg', '2021-12-01 13:14:31.136509', 2);

-- --------------------------------------------------------

--
-- Table structure for table `menu_cart`
--

CREATE TABLE `menu_cart` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `food_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu_category`
--

CREATE TABLE `menu_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(300) DEFAULT NULL,
  `category_image` varchar(100) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_category`
--

INSERT INTO `menu_category` (`id`, `category_name`, `category_image`, `created_date`) VALUES
(1, 'momo', 'static/uploads/momo.jpg', '2021-12-01 13:10:38.812889'),
(2, 'chowmein', 'static/uploads/chowmein_bGjqHxv.jpg', '2021-12-01 13:10:58.359838'),
(3, 'pakoda', 'static/uploads/pakoda.jpg', '2021-12-01 13:11:11.957553');

-- --------------------------------------------------------

--
-- Table structure for table `menu_food`
--

CREATE TABLE `menu_food` (
  `id` bigint(20) NOT NULL,
  `food_name` varchar(300) NOT NULL,
  `food_price` double NOT NULL,
  `food_image` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_food`
--

INSERT INTO `menu_food` (`id`, `food_name`, `food_price`, `food_image`, `created_date`, `category_id`) VALUES
(1, 'chi momo', 150, 'static/uploads/momo_Hs4zI7n.jpg', '2021-12-01 13:11:43.431512', 1),
(2, 'veg chowmein', 120, 'static/uploads/chowmein_jHj7QOj.jpg', '2021-12-01 13:12:20.457731', 2),
(3, 'panner pakoda', 200, 'static/uploads/pakoda_xdJGBZy.jpg', '2021-12-01 13:12:49.568172', 3);

-- --------------------------------------------------------

--
-- Table structure for table `menu_order`
--

CREATE TABLE `menu_order` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `contact_address` varchar(200) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `food_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_method` varchar(200) DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_order`
--

INSERT INTO `menu_order` (`id`, `quantity`, `total_price`, `status`, `contact_no`, `contact_address`, `created_date`, `food_id`, `user_id`, `payment_method`, `payment_status`) VALUES
(1, 10, 2000, 'Pending', '1234567890', 'ktm', '2021-12-01 16:00:10.313765', 3, 2, NULL, 0),
(2, 10, 1200, 'Delivered', '7894561230', 'ktm', '2021-12-01 16:21:20.883903', 2, 2, NULL, 0);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `home_gallery`
--
ALTER TABLE `home_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_profile`
--
ALTER TABLE `home_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `menu_cart`
--
ALTER TABLE `menu_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_cart_food_id_aa6c068c_fk_menu_food_id` (`food_id`),
  ADD KEY `menu_cart_user_id_dd562d2d_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `menu_category`
--
ALTER TABLE `menu_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_food`
--
ALTER TABLE `menu_food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_food_category_id_39589c01_fk_menu_category_id` (`category_id`);

--
-- Indexes for table `menu_order`
--
ALTER TABLE `menu_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_order_food_id_4c007cf2_fk_menu_food_id` (`food_id`),
  ADD KEY `menu_order_user_id_56d83e83_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `home_gallery`
--
ALTER TABLE `home_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_profile`
--
ALTER TABLE `home_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_cart`
--
ALTER TABLE `menu_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_category`
--
ALTER TABLE `menu_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu_food`
--
ALTER TABLE `menu_food`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_order`
--
ALTER TABLE `menu_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `home_profile`
--
ALTER TABLE `home_profile`
  ADD CONSTRAINT `home_profile_user_id_5bf46ea0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `menu_cart`
--
ALTER TABLE `menu_cart`
  ADD CONSTRAINT `menu_cart_food_id_aa6c068c_fk_menu_food_id` FOREIGN KEY (`food_id`) REFERENCES `menu_food` (`id`),
  ADD CONSTRAINT `menu_cart_user_id_dd562d2d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `menu_food`
--
ALTER TABLE `menu_food`
  ADD CONSTRAINT `menu_food_category_id_39589c01_fk_menu_category_id` FOREIGN KEY (`category_id`) REFERENCES `menu_category` (`id`);

--
-- Constraints for table `menu_order`
--
ALTER TABLE `menu_order`
  ADD CONSTRAINT `menu_order_food_id_4c007cf2_fk_menu_food_id` FOREIGN KEY (`food_id`) REFERENCES `menu_food` (`id`),
  ADD CONSTRAINT `menu_order_user_id_56d83e83_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
