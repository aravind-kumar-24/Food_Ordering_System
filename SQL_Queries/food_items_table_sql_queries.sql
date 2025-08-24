/* SQL Query to view the availabe Databases */
SHOW DATABASES;

/* SQL Query to use the Database that we want */
USE food_ordering_system;

/* SQL Table Creation Query */
CREATE TABLE food_items(
		item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        restaurant_id INT NOT NULL,
        item_name VARCHAR(255) NOT NULL,
        item_price VARCHAR(255) NOT NULL,
        category_id INT NOT NULL,
        created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        deleted_at DATETIME,
        FOREIGN KEY (category_id) REFERENCES food_category(category_id)
);

/* SQL ALTER TABLE Query */
ALTER TABLE food_items
ADD FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id);