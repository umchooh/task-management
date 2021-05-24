CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(250) NOT NULL,
  `project_timestamp` datetime NOT NULL,
  `description` varchar(1000) NOT NULL
);