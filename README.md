# MySQL Bookstore Project

-- Table structure for table `books`
`id` int NOT NULL AUTO_INCREMENT,
`url` varchar(255) DEFAULT NULL,
`upc` varchar(255) DEFAULT NULL,
`product_type` varchar(255) DEFAULT NULL,
`price_excl_tax` decimal(10,0) DEFAULT NULL,
`price_incl_tax` decimal(10,0) DEFAULT NULL,
`tax` decimal(10,0) DEFAULT NULL,
`price` decimal(10,0) DEFAULT NULL,
`availability` int DEFAULT NULL,
`num_reviews` int DEFAULT NULL,
`stars` int DEFAULT NULL,
`category` varchar(255) DEFAULT NULL,
) ENGINE=InnoDB AUTO_INCREMENT=999 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
-- The code to see Books table :
# 1. Data Retrieval and Filtering
-- a) Find all books with price_incl_tax > $50
where price_incl_tax > 50;
-- b) List all books in a specific category  ,sorted by their price_excl_tax in  descending order.
where category ='science fiction'
order by price_excl_tax desc;
-- c) A query to find books with 4 or more stars and an availability of 10 or less.
where stars >= 4
# 2. Data Aggregation and Analysis
-- a) A query to find the total number of books and the average price for each category.
-- b)A query to identify the top 5 most-reviewed books.
-- c)A query to calculate the average stars rating for books in each category.
# 3. Complex Queries and Reporting
-- a) A query to create a report showing book titles, price_incl_tax, and a calculated
-- column named price_level with values like &#39;Expensive&#39; (if price &gt; 40), &#39;Moderate&#39;
-- (if price between 20 and 40), and &#39;Affordable&#39; (if price &lt; 20).
when price_incl_tax > 40 then 'expensive'
when price_incl_tax between 20 and 40 then 'moderate'
-- b)A query to find the book with the highest price within each category.
-- c) A query to calculate the percentage of books in each category out of the total number of books.
COUNT(*) * 100 / (SELECT COUNT(*) FROM books) AS percentage
WHERE price_incl_tax = (
WHERE b2.category = books.category
WHEN price_incl_tax > 40 THEN 'Expensive'
WHEN price_incl_tax BETWEEN 20 AND 40 THEN 'Moderate'
# 4. Data Maintenance and Updates.
-- a)  An UPDATE statement to change the tax and price_incl_tax for a specific book.
-- b) A DELETE statement to remove a book that is no longer in stock (availability = 0).
SET SQL_SAFE_UPDATES = 0;
WHERE availability = 0;
#5. Database Design and Schema Improvements
category_id INT PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(100) NOT NULL
-- Books Table (with Foreign Keys)
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(150) NOT NULL,
Problem Statement
The provided database schema for a books table is a foundational component of a retail bookstore's backend system. The challenge is to leverage this schema to build a robust and functional MySQL project that provides valuable insights into the bookstore's inventory and sales data. The primary problems to solve are data retrieval, analysis, and reporting to support business operations and decision-making.
The current schema, while useful for storing book details, lacks the functionality for deeper analysis. The raw data needs to be processed to answer key business questions, such as:
Which books are bestsellers? 💰
How does pricing affect sales and availability?
How do customer reviews correlate with a book's price and availability?
The project needs to address these questions by designing and executing a series of MySQL queries that transform the raw data into actionable intelligence. The project will also need to handle data integrity and consistency, ensuring the data is accurate for all reporting purposes.
Expected Tasks
The following tasks are designed to be a comprehensive MySQL project, building on the provided books table schema:
1. Data Retrieval and Filtering
Task: Write queries to retrieve specific sets of data based on business requirements.
A query to find all books with a price_incl_tax greater than a certain value (e.g., $50).
A query to list all books in a specific category, sorted by their price_excl_tax in descending order.
A query to find books with 4 or more stars and an availability of 10 or less.
2. Data Aggregation and Analysis
Task: Use aggregation functions (COUNT, SUM, AVG, MAX, MIN) and GROUP BY to analyze the dataset.
A query to find the total number of books and the average price for each category.
A query to identify the top 5 most-reviewed books.
A query to calculate the average stars rating for books in each category.
3. Complex Queries and Reporting
Task: Create more complex queries using subqueries and CASE statements to generate business reports.
A query to create a report showing book titles, price_incl_tax, and a calculated column named price_level with values like 'Expensive' (if price > 40), 'Moderate' (if price between 20 and 40), and 'Affordable' (if price < 20).
A query to find the book with the highest price within each category.
A query to calculate the percentage of books in each category out of the total number of books.
4. Data Maintenance and Updates
Task: Demonstrate an understanding of data modification.
An UPDATE statement to change the tax and price_incl_tax for a specific book.
A DELETE statement to remove a book that is no longer in stock (availability = 0).
5. Database Design and Schema Improvements
Task: Propose and justify at least two improvements to the current schema for better functionality or normalization.