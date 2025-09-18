-- A brief explanation of the proposed changes (e.g., adding a publisher tabl  and a foreign key) and a CREATE TABLE statement for the new schema.
-- Publisher Table
publisher_id INT PRIMARY KEY AUTO_INCREMENT,
publisher_name VARCHAR(100) NOT NULL
-- Categories Table
publisher_id INT,
FOREIGN KEY (category_id) REFERENCES categories(category_id),
FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id)
Are certain categories more popular than others? 📊
Deliverable: A brief explanation of the proposed changes (e.g., adding a publisher table and a foreign key) and a CREATE TABLE statement for the new schema.