# BabyGhost Streetwear Management System

## Overview

BabyGhost Streetwear, founded by Yaya Yao, is a brand that celebrates creativity, inclusivity, and the unique blend of street style fashion inspired by the art and dance of exceptional children. Our management system is designed to enhance operational efficiency and provide comprehensive analytics on sales, customer trends, and inventory, ensuring our offerings remain aligned with our brand's mission.

To create a nice markdown diagram of your repository folder structure, you can use a tree-like structure to clearly illustrate how your files and directories are organized. Here's how you can structure the "Implementation Code" section in your README.md to represent your repository's folder structure:

---

## How to Use

![User Demo](userdemo.mp4)

---

## Implementation Code

```
BabyGhost-Streetwear-Management-System/
│
├── images/                   # Directory for images
│
├── README.md                 # Project documentation
│
├── style.css                 # CSS styles for the web application
│
├── index.html                # Entry point for the website
│
├── connectionData.txt        # Database connection configurations
│
├── 451finalER.png            # ER Diagram for the database
│
├── Updated451Web.sql         # SQL file with all the database schemas and initial data
│
└── php/                      # Directory for PHP scripts
    ├── bestCateg.php         # Script to find best selling products by category
    ├── fromState.php         # Script to find products purchased by users from specified states
    ├── mostBuyUsers.php      # Script to list top 3 most purchased users
    ├── outOfStock.php        # Script to list out of stock products
    ├── totalRevenue.php      # Script to calculate total revenue and quantity sold for each product
    └── totalSale.php         # Script to calculate total sales for each store
```

## Database Structure

The BabyGhost Streetwear Management System is intricately designed to simulate what an immersive employee environment would be like, enabling staff to interact seamlessly with our database through a series of sophisticated applications. These applications are engineered to leverage complex SQL queries that delve into extensive analytics, covering sales metrics, customer trends, and comprehensive inventory management.

## Logical Design

![Logical Design](451finalER.png)

## Physical Design

The BabyGhost Streetwear Management System's database is designed to manage and track all essential operations of the retail business. Here’s a breakdown of each table and its attributes:

### 1. **User**

Stores information about users who interact with the system, typically customers.

- **id (INT)**: Automatically incremented unique identifier.
- **name (VARCHAR(45))**: Full name of the user.
- **phone (VARCHAR(45))**: Contact phone number.
- **username (VARCHAR(45))**: User's login username.
- **password (VARCHAR(45))**: User's login password.

### 2. **Product**

Contains details about products available for purchase.

- **id (INT)**: Automatically incremented unique identifier.
- **name (VARCHAR(45))**: Name of the product.
- **description (VARCHAR(255))**: Descriptive details of the product.
- **price (DECIMAL(10,2))**: Retail price of the product.
- **stock (INT)**: Current inventory count.
- **Manufacturer_id (INT)**: Reference to the manufacturer of the product.

### 3. **Order**

Keeps records of customer orders.

- **order_id (INT)**: Automatically incremented unique identifier.
- **payment_method (VARCHAR(45))**: Type of payment used (e.g., credit, debit).
- **transaction_date (DATETIME)**: Date and time the order was made.
- **total_price (DECIMAL(10,2))**: Total cost of the order.
- **User_id (INT)**: Reference to the user who placed the order.

### 4. **Order_items**

Maps products to orders, detailing the quantities of each product per order.

- **Order_order_id (INT)**: Reference to the related order.
- **Product_id (INT)**: Reference to the purchased product.
- **quantity (INT)**: Quantity of the product ordered.

### 5. **Stock**

Tracks inventory levels of products across different stores.

- **Product_id (INT)**: Reference to the product.
- **Store_id (INT)**: Reference to the store holding the inventory.
- **quantity (INT)**: Amount of product in stock.
- **bulk_price (DECIMAL(10,2))**: Wholesale cost of the product for the store.

### 6. **Store**

Handles details of physical and online store locations.

- **id (INT)**: Automatically incremented unique identifier.
- **platform (VARCHAR(45))**: Platform the store operates on (e.g., Instagram, Shopify).
- **address (VARCHAR(45))**: Address of the store.
- **phone (VARCHAR(45))**: Contact number of the store.
- **manager_id (INT)**: Reference to the managing employee.

### 7. **Employee**

Manages employee information within the company.

- **id (INT)**: Automatically incremented unique identifier.
- **name (VARCHAR(45))**: Name of the employee.
- **phone (VARCHAR(45))**: Contact number of the employee.
- **ssn (CHAR(9))**: Social Security Number of the employee.
- **salary (DECIMAL(10,2))**: Salary of the employee.

### 8. **Manufacturer**

Details manufacturers who supply products to the store.

- **id (INT)**: Automatically incremented unique identifier.
- **name (VARCHAR(45))**: Name of the manufacturer.
- **location (VARCHAR(45))**: Location of the manufacturer.

### 9. **Address**

Records detailed addresses associated with users.

- **address_id (VARCHAR(45))**: Unique identifier for each address.
- **User_id (INT)**: Reference to the associated user.
- **address (VARCHAR(45))**: Detailed address line.
- **city (VARCHAR(45))**: City of the address.
- **street (VARCHAR(45))**: Street of the address.
- **state (VARCHAR(45))**: State of the address.

---

## List of Applications

The BabyGhost Streetwear Management System includes several key applications designed to provide comprehensive analytics and operational support through its web interface. Each application leverages SQL queries to interact with the database and produce real-time insights:

### 1. **Total Sales for Each Store**

This application calculates the total sales for each store, presenting the data on a store-by-store basis.

- **Tables Affected:** Store, Stock, Product, Order_items, Order
- **Functionality:** Aggregates sales data across different stores and platforms, displaying the total sales figure for each.

### 2. **Total Revenue and Quantity Sold for Each Product**

Calculates both the total revenue and the quantity sold for each product, accounting for bulk pricing where applicable.

- **Tables Affected:** Product, Order_items, Stock
- **Functionality:** Provides a detailed breakdown of sales volume and revenue generated per product, highlighting top-performing items.

### 3. **Products Out of Stock**

Lists products that are currently out of stock across all stores.

- **Tables Affected:** Product, Stock
- **Functionality:** Identifies inventory shortages, allowing for timely restocking and inventory management.

### 4. **Top 3 Most Purchased Users**

Identifies the top three users based on the number of purchases.

- **Tables Affected:** User, Order, Order_items
- **Functionality:** Recognizes and lists the top customers, which can help in tailoring marketing strategies and rewards programs.

### 5. **Best Selling Products by Category**

This application segments products into categories and ranks them by total revenue generated.

- **Tables Affected:** Product, Order_items, Stock
- **Functionality:** Allows for an analysis of sales performance by category, aiding in product development and marketing focus.

### 6. **Products Purchased by Users from Specified States**

Allows users to query the database for products purchased by users in specific states.

- **Tables Affected:** Product, Order_items, Order, User, Address
- **Functionality:** Offers insights into regional sales trends, which can inform targeted marketing campaigns and stock distribution strategies.

---

Each of these applications is integrated into the BabyGhost web platform, accessible via a user-friendly interface that displays relevant results based on real-time data queries. For more information on the queries, refer to the php files in the repository.

## Contents of Table

[Updated451Web.sql](/Updated451Web.sql)
