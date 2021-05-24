CREATE TABLE `app_user` (
  `ID` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL
)


--Insert Data--
INSERT INTO `app_user` (`ID`, `first_name`, `last_name`, `middle_name`, `username`, `password`, `phone_number`,`email_address`) 
VALUES (NULL, 'James', 'Bond', NULL, 'james_bond', '1234567', '641-255-6825','james.bond@test.com');