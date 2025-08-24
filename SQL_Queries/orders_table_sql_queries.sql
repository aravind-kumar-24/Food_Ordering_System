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

ALTER TABLE orders
ADD COLUMN order_number INT NOT NULL AFTER order_id;

/* SQL Insert Query (Order against single user for time being)*/
INSERT INTO orders (order_number, restaurant_id, customer_id, item_id, item_price, qty, total_amount, status)
VALUES
	(1, 1, 1, 9, '350', '1', CAST(350 * 1 AS CHAR), 0),
    (1, 1, 1, 11, '340', '1', CAST(340 * 1 AS CHAR), 0),
    (1, 1, 1, 28, '475', '2', CAST(475 * 2 AS CHAR), 0),
    (1, 1, 1, 25, '250', '2', CAST(250 * 2 AS CHAR), 0),
	(2, 4, 3, 81, '255', '1', CAST(255 * 1 AS CHAR), 0),
    (2, 4, 3, 89, '105', '2', CAST(105 * 2 AS CHAR), 0),
    (2, 4, 3, 92, '160', '2', CAST(160 * 2 AS CHAR), 0);
