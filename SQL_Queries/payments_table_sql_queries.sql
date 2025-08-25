/* SQL Query to view the availabe Databases */
SHOW DATABASES;

/* SQL Query to use the Database that we want */
USE food_ordering_system;

/* SQL Table Creation Query */
CREATE TABLE payments(
		payment_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        order_id INT NOT NULL,
        total_amount VARCHAR(255) NOT NULL,
        payment_method ENUM('cash', 'card','upi','wallet') NOT NULL,
        payment_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        deleted_at DATETIME,
		FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

/* SQL Query to view the foreign key constraint */ 
SHOW CREATE TABLE payments;

/* ALTER Table SQL Query */
ALTER TABLE payments
DROP FOREIGN KEY payments_ibfk_1;

ALTER TABLE payments
MODIFY order_id VARCHAR(255);

/* SQL Insert Table Query */
INSERT INTO payments( order_id, total_amount, payment_method)
VALUES
	('8,9,10,11', CAST(350 + 340 + 950 + 500 AS CHAR), 'upi'),
    ('12, 13, 14', CAST(255 + 210 + 320 AS CHAR), 'wallet');
