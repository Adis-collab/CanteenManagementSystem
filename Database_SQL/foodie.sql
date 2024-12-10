-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 01, 2023 at 08:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodie`
--
CREATE DATABASE IF NOT EXISTS `foodie` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `foodie`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `cust_email` varchar(255) NOT NULL,
  `cust_password` varchar(255) NOT NULL,
  `cust_contact` varchar(20) DEFAULT NULL,
  `cust_username` varchar(30) DEFAULT NULL,
  `cust_wallet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_email`, `cust_password`, `cust_contact`, `cust_username`, `cust_wallet`) VALUES
(10, 'Aditya Swami', 'adityaswami714@gmail.com', 'adi', '9822742148', 'aditya', 2000),
(11, 'Krish', 'karankakati24@gmail.com', 'krish', '9822742148', 'krish', 760);

-- --------------------------------------------------------

--
-- Table structure for table `cust_login`
--

CREATE TABLE `cust_login` (
  `username` varchar(30) NOT NULL,
  `cust_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cust_login`
--

INSERT INTO `cust_login` (`username`, `cust_password`) VALUES
('aditya', 'adi'),
('krish', 'krish');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(20) DEFAULT NULL,
  `menu_price` int(11) DEFAULT NULL,
  `menu_description` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `items` int(11) DEFAULT NULL,
  `total_amount` bigint(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `items`, `total_amount`, `username`) VALUES
(9, 0, 0, 'root'),
(10, 0, 0, 'root'),
(11, 0, 0, 'root'),
(15, 0, 0, 'root');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) DEFAULT NULL,
  `staff_name` varchar(20) DEFAULT NULL,
  `staff_role` varchar(20) DEFAULT NULL,
  `staff_contact` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `matrimony`
--
CREATE DATABASE IF NOT EXISTS `matrimony` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `matrimony`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(8) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `cust_id` int(5) NOT NULL,
  `email` varchar(60) NOT NULL,
  `age` varchar(10) NOT NULL,
  `height` int(10) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `subcaste` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(10) NOT NULL,
  `maritalstatus` varchar(20) NOT NULL,
  `profilecreatedby` varchar(20) NOT NULL,
  `education` text NOT NULL,
  `education_sub` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `body_type` text NOT NULL,
  `physical_status` text NOT NULL,
  `drink` varchar(8) NOT NULL,
  `mothertounge` text NOT NULL,
  `colour` varchar(20) NOT NULL,
  `weight` int(5) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `diet` varchar(8) NOT NULL,
  `smoke` varchar(8) NOT NULL,
  `dateofbirth` date NOT NULL,
  `occupation` text NOT NULL,
  `occupation_descr` text NOT NULL,
  `annual_income` varchar(20) NOT NULL,
  `fathers_occupation` varchar(20) NOT NULL,
  `mothers_occupation` varchar(20) NOT NULL,
  `no_bro` int(5) NOT NULL,
  `no_sis` int(5) NOT NULL,
  `aboutme` text NOT NULL,
  `profilecreationdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `email`, `age`, `height`, `sex`, `religion`, `caste`, `subcaste`, `district`, `state`, `country`, `maritalstatus`, `profilecreatedby`, `education`, `education_sub`, `firstname`, `lastname`, `body_type`, `physical_status`, `drink`, `mothertounge`, `colour`, `weight`, `blood_group`, `diet`, `smoke`, `dateofbirth`, `occupation`, `occupation_descr`, `annual_income`, `fathers_occupation`, `mothers_occupation`, `no_bro`, `no_sis`, `aboutme`, `profilecreationdate`) VALUES
(111, 0, 'jhgasdasd@hjsadkl.cop', '27', 0, 'Male', 'Hindu', 'Thiyya', 'sub cast1', 'Wayanad', 'Kerala', 'India', 'Single', 'Self', 'Primary', '', 'test', 'testyhtjsdf', 'Slim', 'No Problem', 'Sometime', 'Malayalam', 'Dark', 58, 'O +ve', 'Veg', 'Sometime', '1996-01-12', 'dgdsgsdf', 'gdsg', '4654456', 'erfdgdsg', 'dsgsdgdsfgdsfgdfg', 1, 1, 'dfgdsgdsfg', '2016-02-27'),
(112, 7, 'dadasd@asd.com', '', 0, 'Male', 'Not Applicable', 'Roman Cathaolic', 'Not Applicable', '', '', 'Not Applic', 'Single', 'Self', 'Primary', '', 'kjdhkdsjfghk', 'QKJHKJFHSDFJKH', 'Slim', 'No Problem', 'No', 'Malayalam', 'Dark', 0, 'O +ve', 'Veg', 'No', '0000-00-00', '', '', '', '', '', 1, 1, '', '2016-02-27'),
(113, 12, 'asdasdasd@asdfsadf.com', '18', 0, 'Male', 'Hindu', 'Thiyya', 'sub cast1', 'Wayanad', 'Kerala', 'India', 'Single', 'Self', 'PG', 'dsadasd', 'Aswin', 'Kuttappi', 'Slim', 'No Problem', 'No', 'Malayalam', 'Dark', 58, 'O +ve', 'Veg', 'No', '1998-02-14', 'das', 'dasdas', '8598', 'dasdasd', 'asdasdsd', 1, 1, 'assdfsdf sdfas fasdf asdfasdf asdf', '2016-02-28'),
(114, 13, 'asdasdasd@asdfsadf.com', '18', 0, 'Female', 'Hindu', 'Thiyya', 'sub cast1', 'Wayanad', 'Kerala', 'India', 'Single', 'Self', 'PG', 'dsadasd', 'Reshma', 'Reshma', 'Slim', 'No Problem', 'No', 'Malayalam', 'Dark', 58, 'O +ve', 'Veg', 'No', '1998-02-14', 'das', 'dasdas', '8598', 'dasdasd', 'asdasdsd', 1, 1, 'assdfsdf sdfas fasdf asdfasdf asdf', '2016-02-28'),
(115, 14, 'asdasdasd@asdfsadf.com', '18', 0, 'Male', 'Hindu', 'Thiyya', 'sub cast1', 'Wayanad', 'Kerala', 'India', 'Single', 'Self', 'PG', 'dsadasd', 'Rahul', 'Rahul', 'Slim', 'No Problem', 'No', 'Malayalam', 'Dark', 58, 'O +ve', 'Veg', 'No', '1998-02-14', 'das', 'dasdas', '8598', 'dasdasd', 'asdasdsd', 1, 1, 'assdfsdf sdfas fasdf asdfasdf asdf', '2016-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `items` int(11) DEFAULT NULL,
  `total_amount` bigint(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partnerprefs`
--

CREATE TABLE `partnerprefs` (
  `id` int(10) NOT NULL,
  `custId` int(10) NOT NULL,
  `agemin` varchar(3) NOT NULL,
  `agemax` int(3) NOT NULL,
  `maritalstatus` varchar(20) NOT NULL,
  `complexion` varchar(10) NOT NULL,
  `height` int(3) NOT NULL,
  `diet` varchar(10) NOT NULL,
  `religion` varchar(15) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `subcaste` varchar(20) NOT NULL,
  `mothertounge` varchar(20) NOT NULL,
  `education` varchar(30) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `descr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `partnerprefs`
--

INSERT INTO `partnerprefs` (`id`, `custId`, `agemin`, `agemax`, `maritalstatus`, `complexion`, `height`, `diet`, `religion`, `caste`, `subcaste`, `mothertounge`, `education`, `occupation`, `country`, `descr`) VALUES
(1, 6, '18', 30, 'Single', '', 180, 'Veg', 'Not Applicable', 'Roman Cathaolic', '', '', 'Primary', '', 'Not Applicable', 'Beautiful , Super, just for fun'),
(2, 7, '18', 40, 'Single', '', 150, 'Veg', 'Not Applicable', 'Roman Cathaolic', '', '', 'Primary', '', 'Not Applicable', ''),
(3, 12, '18', 40, 'Single', '', 150, 'Veg', 'Hindu', 'Thiyya', '', '', 'PG', 'sadasdasd', 'Hindu', ''),
(4, 13, '18', 40, 'Single', '', 0, 'Veg', 'Hindu', 'Thiyya', '', '', 'PG', 'das', 'Hindu', ''),
(5, 14, '18', 50, 'Single', '', 0, 'Veg', 'Hindu', 'Thiyya', '', '', 'PG', 'das', 'Hindu', 'asdasdas da asfd afsdfasdf asjdf akjsdf kjafsdks d');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `pic1` varchar(25) NOT NULL,
  `pic2` varchar(40) NOT NULL,
  `pic3` varchar(40) NOT NULL,
  `pic4` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `cust_id`, `pic1`, `pic2`, `pic3`, `pic4`) VALUES
(27, 6, 'img.jpg', 'picture.jpg', 'picture-2.jpg', 'user.png'),
(28, 7, 'banner_img_3@2x.png', 'article_img_2.jpg', 'banner_img_5@2x.png', 'article_img_1.jpg'),
(29, 12, 'article_img_1.jpg', 'article_img_2.jpg', 'banner_img_2.png', 'banner_img_2.png'),
(30, 13, 'team-13.jpg', 'thumb-intro.jpg', 'avatar-1.jpg', '1.jpg'),
(31, 14, '1.jpg', 'img-1.jpg', 'avatar-1.jpg', 'team-13.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `profilestat` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `dateofbirth` date NOT NULL,
  `gender` varchar(5) NOT NULL,
  `userlevel` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profilestat`, `username`, `password`, `email`, `dateofbirth`, `gender`, `userlevel`) VALUES
(1, 0, 'admin', 'admin', 'admin@nowhere.com', '2016-02-17', 'male', 1),
(6, 0, 'test', 'test', 'test@test.com', '2016-02-11', 'femal', 0),
(7, 0, 'shobi', 'shobi', 'jdshfkjsh@nowhere.com', '0000-00-00', 'male', 0),
(8, 0, 'Name', '', 'E-Mail', '0000-00-00', '', 0),
(9, 0, 'Raju', 'raju', 'raju@nowhere.com', '0000-00-00', 'male', 0),
(10, 0, 'kuttappi', 'kuttappi', 'kuttapi@kuttappi.com', '0000-00-00', '', 0),
(11, 0, 'fdsdte', 'qe41234234', 'twetwet@sdfds.com', '0000-00-00', '', 0),
(12, 0, 'aswin', 'aswin', 'aswin@nowhere.com', '1997-01-20', 'male', 0),
(13, 0, 'reshma', 'reshma', 'asdasdasd@asdfsadf.com', '1998-02-14', 'femal', 0),
(14, 0, 'rahul', 'rahul', 'asdasdasd@asdfsadf.com', '1998-02-14', 'male', 0),
(15, 0, '_aditya_714', 'adi', 'adityaswami714@gmail.com', '1988-05-15', 'male', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cust_id` (`cust_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `partnerprefs`
--
ALTER TABLE `partnerprefs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custId` (`custId`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cust_id` (`cust_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partnerprefs`
--
ALTER TABLE `partnerprefs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"foodie\",\"table\":\"customer\"},{\"db\":\"foodie\",\"table\":\"cust_login\"},{\"db\":\"foodie\",\"table\":\"orders\"},{\"db\":\"foodie\",\"table\":\"menu\"},{\"db\":\"foodie\",\"table\":\"staff\"},{\"db\":\"foodie\",\"table\":\"users\"},{\"db\":\"matrimony\",\"table\":\"users\"},{\"db\":\"matrimony\",\"table\":\"admin\"},{\"db\":\"matrimony\",\"table\":\"customer\"},{\"db\":\"foodie\",\"table\":\"login\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-11-01 19:07:39', '{\"lang\":\"en_GB\",\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":171}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
