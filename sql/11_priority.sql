CREATE TABLE IF NOT EXISTS priority (
    id INT PRIMARY KEY AUTO_INCREMENT,
    description varchar(100)
    )

INSERT INTO priority
    (description)
    VALUES
        ('Critical'),
        ('High'),
        ('Medium'),
        ('Low');