/* SQL Query to view the availabe Databases */
SHOW DATABASES;

/* SQL Query to use the Database that we want */
USE food_ordering_system;

/* SQL Table Creation Query */
CREATE TABLE restaurants(
		restaurant_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        restaurant_name VARCHAR(255) NOT NULL,
		restaurant_number VARCHAR(15) NOT NULL UNIQUE,
        restaurant_address VARCHAR(255) NOT NULL,
        restaurant_rating DECIMAL(2,1) NOT NULL,
        order_count INT NOT NULL DEFAULT 0,
        created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        deleted_at DATETIME
)
        