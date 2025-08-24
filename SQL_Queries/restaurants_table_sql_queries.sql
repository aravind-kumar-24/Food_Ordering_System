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
);

/* ALTER Table query to drop the order_count column */
ALTER TABLE restaurants
DROP COLUMN order_count;

/* SQL Insert Query */ 
INSERT INTO restaurants (restaurant_name, restaurant_number, restaurant_address, restaurant_rating)
VALUES
	('Zaitoon', '+91 7092322223', 'Old No 57, New 15, Valluvar Kottam High Rd, Ponnangipuram, Ambal Nagar, Nungambakkam, Chennai, Tamil Nadu 600034', 4.6),
    ("Pandia's Avenue", '+91 9884804920', 'bridge, 5, Cemetery Rd, near Royapuram, Minakshi Ammanpet, Royapuram, Chennai, Tamil Nadu 600013', 4.4),
    ('Broken Bridge Cafe Indian Restaurant', '+91 7550017900', 'Somerset Greenways, 94, Sathyadev Ave, MRC Nagar, Raja Annamalai Puram, Chennai, Tamil Nadu 600028', 4.0),
    ('Ratna Cafe', '+91 4428445875', 'Triplicane, Chennai, Tamil Nadu', 4.3),
    ('Murugan Idli Shop', '+91 4428142400', 'Besant Nagar, Chennai, Tamil Nadu', 4.7),
    ('Adyar Ananda Bhavan (A2B)', '+91 4428524350 ', 'Purasawalkam, Chennai, Tamil Nadu', 4.2),
    ('Anjappar Chettinad Restaurant', '+91 4428276868', 'Nungambakkam High Road, Chennai, Tamil Nadu', 3.8),
    ('Dindigul Thalappakatti', '+91 4442121111', 'Anna Nagar, Chennai, Tamil Nadu', 3.6),
    ('The Patiala House', '+91 4448619292', 'Chetpet, Chennai, Tamil Nadu', 3.9),
    ('ZA Pizza Cafe', '+91 4443095050', 'Nungambakkam, Chennai, Tamil Nadu', 3.4),
    ('Beat Route', '+91 4443562222', 'Nungambakkam, Chennai, Tamil Nadu', 3.5),
    ('Moonlight Take Away & Delivery', '+91 4428154545', 'T Nagar, Chennai, Tamil Nadu', 3.9),
    ('Sangeetha Veg Restaurant', '+91 4428151234', 'Mylapore, Chennai, Tamil Nadu', 4.0),
    ('Buhari Hotel', '+91 4428552550', 'Mount Road, Chennai, Tamil Nadu', 4.8);
    
    
        