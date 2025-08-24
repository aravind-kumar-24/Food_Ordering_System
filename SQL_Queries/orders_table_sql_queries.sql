/* SQL Query to view the availabe Databases */
SHOW DATABASES;

/* SQL Query to use the Database that we want */
USE food_ordering_system;

/* SQL Table Creation Query */
CREATE TABLE orders(
		order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        restaurant_id INT NOT NULL,
        customer_id INT NOT NULL,
        item_id INT NOT NULL,
        item_price VARCHAR(255) NOT NULL,
        qty VARCHAR(255) NOT NULL,
        total_amount VARCHAR(255) NOT NULL,
        order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        status TINYINT NOT NULL COMMENT '0 --> Pending, 1 --> Completed, 2 --> Cancelled',
        created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        deleted_at DATETIME,
        FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id),
        FOREIGN KEY (item_id) REFERENCES food_items(item_id)
);

/* SQL ALTER TABLE Query */
ALTER TABLE orders
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id); 