/* SQL Query to view the availabe Databases */
SHOW DATABASES;

/* SQL Query to use the Database that we want */
USE food_ordering_system;

/* SQL Table Creation Query */
CREATE TABLE customers(
		customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        customer_name VARCHAR(255) NOT NULL,
        customer_number VARCHAR(15) NOT NULL UNIQUE,
        customer_email VARCHAR(255) NOT NULL UNIQUE,
        customer_address VARCHAR(255) NOT NULL,
        created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        deleted_at DATETIME
);

/* SQL Insert Query */
INSERT INTO customers (customer_name, customer_number, customer_email, customer_address)
VALUES
	('Aravind Kumar', '+91 9002304422', 'aravindkumar@gmail.com', 'Chennai, Tamil Nadu'),
    ('Sri Vatsa', '+91 7896925332', 'srivatsa@gamil.com', 'Chennai, Tamil Nadu'),
    ('Bala Ganesh', '+91 85296964213', 'balaganesh@gmail.com', 'Chennai, Tamil Nadu'),
    ('Sharan Kumar', '+91 7536364213', 'sharan@gmail.com', 'Madurai, Tamil Nadu'),
    ('Praveen Kumar', '+91 6353298897', 'praveen@gmail.com', 'Trichy, Tamil Nadu'),
    ('Thanigai Raja', '+91 8529887412', 'thanigairaja@gmail.com', 'Chennai, Tamil Nadu'),
    ('Ponraj', '+91 9845256321', 'ponraj@gmail.com', 'Karaikudi, Tamil Nadu'),
    ('Bala Kannan', '+91 6547878931', 'balakannan@gmail.com', 'Karaikudi, Tamil Nadu'),
    ('Madhavan', '+91 7896922352', 'madhavan@gmail.com', 'Vellore, Tamil Nadu'),
    ('Yuvraj', '+91 6554298878', 'yuvraj@gmail.com', 'Villupuram, Tamil Nadu');
        