-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 20, 2021 at 07:19 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_user`
--

CREATE TABLE `app_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_user`
--

INSERT INTO `app_user` (`id`, `first_name`, `last_name`, `username`, `password`, `phone_number`, `email_address`) VALUES
(3, 'James', 'Bond', 'james_bond', '12345678', '641-255-6825', 'james.bond@test.com'),
(7, 'Mary', 'Schick', NULL, '$2y$10$TYgIhHPPLQkwLeT439kj4.Y5gna3AuWnxyLZR4SxszRl.DW1xU/Vq', NULL, 'mary@test3.com'),
(8, 'Ken', 'Nicholls', NULL, '$2y$10$bllzN0mSnX49cOeVkS2Bw.AoSwwF9sppdWKe9qucFpJ3un.PxmH7W', NULL, 'ken@test.com'),
(9, 'Stephan', 'Watt', NULL, '$2y$10$TOrf43vzhcl7oKpn12.a0uQWA3tGV.9cDeUXBXwu.MliV9K5Kru32', NULL, 'stephan@test.com'),
(10, 'Terry', 'Tom', NULL, '$2y$10$/r4beRzMGqvhuWp4JTaEOu0XoiV1.Przs1aePeo1vJW4lfbdAzYCe', NULL, 'terry_tom@test.ca');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project_id` int(11) DEFAULT NULL,
  `creator_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact_info_internal`
--

CREATE TABLE `contact_info_internal` (
  `id` int(11) NOT NULL,
  `sender_user_id` int(11) NOT NULL,
  `recipient_user_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `project_id` int(11) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact_info_public`
--

CREATE TABLE `contact_info_public` (
  `id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `email_address` varchar(55) DEFAULT NULL,
  `phone_number` varchar(55) DEFAULT NULL,
  `subject` varchar(55) DEFAULT NULL,
  `message` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_info_public`
--

INSERT INTO `contact_info_public` (`id`, `name`, `email_address`, `phone_number`, `subject`, `message`) VALUES
(1, 'Stephan Watt', 'stephan@test.com', '416-111-1234', 'Cannot add member', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(2, 'Melinda Hurley', 'melinda@test.com', '416-222-2323', 'How many member can add', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(3, 'Choo', 'testing@test.com', '416-222-3333', 'service', 'Testing for trial run\r\n'),
(4, 'choo', 'choo@test.ca', '', 'About this product', 'ssss');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `category`) VALUES
(1, 'Question 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', 1),
(2, 'Question 2', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia volupta', 2),
(3, 'Question 3', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human h', 3),
(4, 'Question 4', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti', 4);

-- --------------------------------------------------------

--
-- Table structure for table `priority`
--

CREATE TABLE `priority` (
  `id` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `priority`
--

INSERT INTO `priority` (`id`, `description`) VALUES
(1, 'Critical'),
(2, 'High'),
(3, 'Medium'),
(4, 'Low');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `project_timestamp` datetime NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `project_timestamp`, `description`) VALUES
(1, 'Hospital Project', '2021-03-01 10:41:06', 'Web Redesign for Hospital LNDH'),
(2, 'Order Application', '2021-03-15 23:41:06', 'online order website'),
(3, 'Aroma Project', '2021-03-14 13:43:32', 'Restaurant Project'),
(4, 'Tech Solution', '2021-03-30 00:00:00', 'Tech solution website'),
(5, 'Agricultural Technology Solution', '2021-04-16 23:49:00', 'Implementation of JS, HTML and Angular with Laravel Framework for a company that sale agriculture products.'),
(6, 'Foody Lab ', '2021-04-19 04:49:00', 'setting requires MongoDB to run crud functionality');

-- --------------------------------------------------------

--
-- Table structure for table `project_user`
--

CREATE TABLE `project_user` (
  `app_user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `description`) VALUES
(1, 'Project Owner'),
(2, 'Team Lead'),
(3, 'Team Member'),
(4, 'Viewer');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `description`) VALUES
(1, 'To Do'),
(2, 'In Progress'),
(3, 'Done'),
(4, 'Canceled');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `assigned_user_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `creator_user_id` int(11) DEFAULT NULL,
  `priority_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `estimated_time` decimal(10,0) DEFAULT NULL,
  `spent_time` decimal(10,0) DEFAULT NULL,
  `remaining_time` decimal(10,0) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `creator_user_id` (`creator_user_id`);

--
-- Indexes for table `contact_info_internal`
--
ALTER TABLE `contact_info_internal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_info_internal_sender_user_1` (`sender_user_id`),
  ADD KEY `contact_info_internal_recipient_user_2` (`recipient_user_id`),
  ADD KEY `contact_info_internal_project_id_1` (`project_id`);

--
-- Indexes for table `contact_info_public`
--
ALTER TABLE `contact_info_public`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `priority`
--
ALTER TABLE `priority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_user`
--
ALTER TABLE `project_user`
  ADD PRIMARY KEY (`app_user_id`,`project_id`),
  ADD UNIQUE KEY `app_user_id` (`app_user_id`,`project_id`),
  ADD KEY `project_id_fk` (`project_id`),
  ADD KEY `role_id_fk` (`role_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_user_id` (`assigned_user_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `creator_user_id` (`creator_user_id`),
  ADD KEY `priority_id` (`priority_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `state_id` (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_info_internal`
--
ALTER TABLE `contact_info_internal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_info_public`
--
ALTER TABLE `contact_info_public`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `priority`
--
ALTER TABLE `priority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `category_ibfk_2` FOREIGN KEY (`creator_user_id`) REFERENCES `app_user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `contact_info_internal`
--
ALTER TABLE `contact_info_internal`
  ADD CONSTRAINT `contact_info_internal_project_id_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `contact_info_internal_recipient_user_2` FOREIGN KEY (`recipient_user_id`) REFERENCES `app_user` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `contact_info_internal_sender_user_1` FOREIGN KEY (`sender_user_id`) REFERENCES `app_user` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `project_user`
--
ALTER TABLE `project_user`
  ADD CONSTRAINT `app_user_id_fk` FOREIGN KEY (`app_user_id`) REFERENCES `app_user` (`id`),
  ADD CONSTRAINT `project_id_fk` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`assigned_user_id`) REFERENCES `app_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_ibfk_3` FOREIGN KEY (`creator_user_id`) REFERENCES `app_user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_ibfk_4` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_ibfk_5` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_ibfk_6` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
