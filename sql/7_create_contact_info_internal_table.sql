CREATE TABLE IF NOT EXISTS contact_info_internal ( 
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT , 
    `sender_user_id` INT NOT NULL , 
    `recipient_user_id` INT NOT NULL , 
    `timestamp` DATETIME NOT NULL , 
    `project_id` INT NOT NULL , 
    `subject` VARCHAR(250) NOT NULL , 
    `message` VARCHAR(4000) NOT NULL ) 

ALTER TABLE `contact_info_internal` 
DROP FOREIGN KEY `contact_info_internal_ibfk_1`; 

ALTER TABLE `contact_info_internal` 
ADD CONSTRAINT `contact_info_internal_sender_user_1` 
FOREIGN KEY (`sender_user_id`) 
REFERENCES `app_user`(`ID`) ON DELETE NO ACTION ON UPDATE RESTRICT; 

ALTER TABLE `contact_info_internal` 
DROP FOREIGN KEY `contact_info_internal_ibfk_2`; 

ALTER TABLE `contact_info_internal` 
ADD CONSTRAINT `contact_info_internal_recipient_user_2` 
FOREIGN KEY (`recipient_user_id`) 
REFERENCES `app_user`(`ID`) ON DELETE NO ACTION ON UPDATE RESTRICT;

ALTER TABLE `contact_info_internal` 
ADD CONSTRAINT `contact_info_internal_project_id_1` 
FOREIGN KEY (`project_id`) 
REFERENCES `project`(`id`) ON DELETE NO ACTION ON UPDATE RESTRICT;