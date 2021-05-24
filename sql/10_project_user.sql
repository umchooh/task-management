CREATE TABLE IF NOT EXISTS `project_user` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `app_user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
    CONSTRAINT app_user_id_fk FOREIGN KEY (app_user_id)
	    REFERENCES app_user(id),
    CONSTRAINT project_id_fk FOREIGN KEY (project_id)
	    REFERENCES project(id),
    CONSTRAINT role_id_fk FOREIGN KEY (role_id)
	    REFERENCES role(id)
);