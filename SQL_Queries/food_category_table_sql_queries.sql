/* SQL Query to view the availabe Databases */
SHOW DATABASES;

/* SQL Query to use the Database that we want */
USE food_ordering_system;

/* SQL Table Creation Query */
CREATE TABLE food_category(
		category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        category_name VARCHAR(255) NOT NULL,
        created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        deleted_at DATETIME
);

/* SQL Insert Query */
INSERT INTO food_category (category_name)
VALUES
	('Starters'),
	('North Indian'),
    ('South Indian'),
    ('Chinese (Indian-style)'),
    ('Street Food'),
    ('Biryani'),
    ('Tandoor / Kebabs'),
    ('Pizza'),
    ('Desserts & Sweets'),
    ('Beverages'),
    ('Seafood');

