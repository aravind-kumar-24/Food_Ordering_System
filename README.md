Food Ordering System (SQL Project):
    This project is a SQL-based Food Ordering System designed to stimulate a real-world restaurant ordering and payment process.
    It demonstrates database design, relationships, constraints, and queries using MySQL.

The System supports:
* Restaurants and their menu items
* Food categories
* Customers placing orders
* Order and payment management

Database Schema:
1. Entities:
        food_category --> Stores Food Categories, 
        food_items --> Menu items offered by Restaurants, 
        restaurants --> Registered restaurants with ratings and details, 
        customers --> Customer details, 
        orders --> Orders placed by customers, 
        payments --> Payment details
   
2. Relationships:
      One restaurant → Many food items, 
      One category → Many food items, 
      One customer → Many orders, 
      One order → One payment (in this project design)
