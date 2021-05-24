CREATE TABLE IF NOT EXISTS state ( 
    ID INT PRIMARY KEY AUTO_INCREMENT, 
    description varchar(100) 
)

INSERT INTO STATE
	(description)
VALUES 
	('To Do'),
	('In Progress'),
	('Done'),
	('Canceled');
