-- LARGE E-COMMERCE DATASET (customers=100, products=60, orders=500, order_items=900, shipments=500)

CREATE TABLE IF NOT EXISTS customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(120),
    email VARCHAR(150) UNIQUE,
    region VARCHAR(50),
    signup_date DATE
);

INSERT INTO customers (customer_id, customer_name, email, region, signup_date) VALUES
(1, 'Karan Singh', 'karan.singh1@example.com', 'East', '2023-09-08'),
(2, 'Sameer Patel', 'sameer.patel2@example.com', 'North', '2024-11-23'),
(3, 'Sana Iyer', 'sana.iyer3@example.com', 'West', '2023-02-02'),
(4, 'Priya Sharma', 'priya.sharma4@example.com', 'South', '2023-08-27'),
(5, 'Suhana Menon', 'suhana.menon5@example.com', 'North', '2024-07-28'),
(6, 'Zara Khandelwal', 'zara.khandelwal6@example.com', 'Central', '2024-03-05'),
(7, 'Sameer Bose', 'sameer.bose7@example.com', 'Central', '2023-10-12'),
(8, 'Amit Gupta', 'amit.gupta8@example.com', 'West', '2023-12-15'),
(9, 'Vivek Patel', 'vivek.patel9@example.com', 'South', '2023-12-11'),
(10, 'Anita Sharma', 'anita.sharma10@example.com', 'West', '2023-04-10'),
(11, 'Saket Joshi', 'saket.joshi11@example.com', 'Central', '2023-09-28'),
(12, 'Emily Tripathi', 'emily.tripathi12@example.com', 'West', '2024-07-03'),
(13, 'Maya Mehta', 'maya.mehta13@example.com', 'North', '2024-07-19'),
(14, 'Imran Shah', 'imran.shah14@example.com', 'Central', '2024-01-06'),
(15, 'Omar Khandelwal', 'omar.khandelwal15@example.com', 'North', '2023-02-16'),
(16, 'Anjali Khan', 'anjali.khan16@example.com', 'North', '2023-08-27'),
(17, 'Mohit Mehta', 'mohit.mehta17@example.com', 'East', '2024-04-09'),
(18, 'Divya Gupta', 'divya.gupta18@example.com', 'East', '2023-12-30'),
(19, 'Farhan Saxena', 'farhan.saxena19@example.com', 'East', '2024-12-19'),
(20, 'Riya Menon', 'riya.menon20@example.com', 'South', '2024-06-30'),
(21, 'Rohit Gupta', 'rohit.gupta21@example.com', 'West', '2024-01-24'),
(22, 'Pooja Shah', 'pooja.shah22@example.com', 'Central', '2023-08-13'),
(23, 'Yash Kumar', 'yash.kumar23@example.com', 'South', '2023-02-02'),
(24, 'Tanvi Mehta', 'tanvi.mehta24@example.com', 'East', '2023-03-09'),
(25, 'Laila Iyer', 'laila.iyer25@example.com', 'East', '2023-08-06'),
(26, 'Rohit Mehta', 'rohit.mehta26@example.com', 'West', '2023-05-27'),
(27, 'Nikhil Patel', 'nikhil.patel27@example.com', 'South', '2024-07-28'),
(28, 'Rhea Reddy', 'rhea.reddy28@example.com', 'Central', '2024-03-14'),
(29, 'Rohan Joshi', 'rohan.joshi29@example.com', 'South', '2023-05-22'),
(30, 'Irfan Bhatt', 'irfan.bhatt30@example.com', 'North', '2023-02-18'),
(31, 'Karan Patel', 'karan.patel31@example.com', 'South', '2024-11-27'),
(32, 'Shreya Menon', 'shreya.menon32@example.com', 'North', '2024-01-30'),
(33, 'Esha Menon', 'esha.menon33@example.com', 'West', '2024-06-25'),
(34, 'Deepa Chopra', 'deepa.chopra34@example.com', 'North', '2024-11-27'),
(35, 'Karan Saxena', 'karan.saxena35@example.com', 'Central', '2023-10-01'),
(36, 'Manish Verma', 'manish.verma36@example.com', 'East', '2024-03-21'),
(37, 'Dev Bose', 'dev.bose37@example.com', 'North', '2023-09-27'),
(38, 'Suhana Gupta', 'suhana.gupta38@example.com', 'Central', '2023-04-19'),
(39, 'Siddharth Shah', 'siddharth.shah39@example.com', 'Central', '2024-09-15'),
(40, 'Zara Patel', 'zara.patel40@example.com', 'East', '2023-06-15'),
(41, 'Kabir Singh', 'kabir.singh41@example.com', 'Central', '2023-11-28'),
(42, 'Milan Singh', 'milan.singh42@example.com', 'North', '2024-01-07'),
(43, 'Ruchi Das', 'ruchi.das43@example.com', 'North', '2023-09-04'),
(44, 'Vikram Sharma', 'vikram.sharma44@example.com', 'West', '2023-03-12'),
(45, 'Rhea Patel', 'rhea.patel45@example.com', 'South', '2024-11-06'),
(46, 'Priti Chopra', 'priti.chopra46@example.com', 'South', '2023-09-29'),
(47, 'Kabir Menon', 'kabir.menon47@example.com', 'West', '2023-08-05'),
(48, 'Zara Khandelwal', 'zara.khandelwal48@example.com', 'East', '2024-02-13'),
(49, 'Parth Bose', 'parth.bose49@example.com', 'Central', '2024-04-07'),
(50, 'Maya Das', 'maya.das50@example.com', 'South', '2023-03-07'),
(51, 'Manish Singh', 'manish.singh51@example.com', 'Central', '2024-07-21'),
(52, 'Anjali Iyer', 'anjali.iyer52@example.com', 'South', '2023-01-08'),
(53, 'Riya Khandelwal', 'riya.khandelwal53@example.com', 'North', '2023-08-23'),
(54, 'Chris Kumar', 'chris.kumar54@example.com', 'East', '2023-03-14'),
(55, 'Irfan Das', 'irfan.das55@example.com', 'East', '2024-11-16'),
(56, 'Milan Nair', 'milan.nair56@example.com', 'Central', '2023-05-16'),
(57, 'Priti Das', 'priti.das57@example.com', 'West', '2024-02-21'),
(58, 'Omar Verma', 'omar.verma58@example.com', 'North', '2024-11-05'),
(59, 'Pranav Joshi', 'pranav.joshi59@example.com', 'West', '2024-02-25'),
(60, 'Suresh Tripathi', 'suresh.tripathi60@example.com', 'North', '2024-11-20'),
(61, 'Mohit Kumar', 'mohit.kumar61@example.com', 'West', '2023-12-14'),
(62, 'Anita Das', 'anita.das62@example.com', 'South', '2023-07-14'),
(63, 'Rhea Bose', 'rhea.bose63@example.com', 'South', '2024-03-08'),
(64, 'Leena Reddy', 'leena.reddy64@example.com', 'West', '2023-09-13'),
(65, 'Riya Bose', 'riya.bose65@example.com', 'Central', '2023-04-11'),
(66, 'Arjun Shah', 'arjun.shah66@example.com', 'Central', '2023-01-16'),
(67, 'Sana Das', 'sana.das67@example.com', 'South', '2024-02-21'),
(68, 'Milan Bhatt', 'milan.bhatt68@example.com', 'South', '2024-02-15'),
(69, 'Neha Gupta', 'neha.gupta69@example.com', 'West', '2023-01-03'),
(70, 'Gaurav Reddy', 'gaurav.reddy70@example.com', 'West', '2023-10-20'),
(71, 'Shreya Khandelwal', 'shreya.khandelwal71@example.com', 'Central', '2024-11-08'),
(72, 'Milan Patel', 'milan.patel72@example.com', 'South', '2023-10-31'),
(73, 'Laila Kumar', 'laila.kumar73@example.com', 'Central', '2024-07-09'),
(74, 'Neha Tripathi', 'neha.tripathi74@example.com', 'East', '2023-02-28'),
(75, 'Arjun Iyer', 'arjun.iyer75@example.com', 'West', '2024-05-29'),
(76, 'Kabir Gupta', 'kabir.gupta76@example.com', 'North', '2024-06-04'),
(77, 'Vikram Gupta', 'vikram.gupta77@example.com', 'North', '2024-09-01'),
(78, 'Chris Saxena', 'chris.saxena78@example.com', 'South', '2024-02-18'),
(79, 'Maya Iyer', 'maya.iyer79@example.com', 'South', '2024-08-15'),
(80, 'Emily Menon', 'emily.menon80@example.com', 'North', '2024-03-05'),
(81, 'Nida Roy', 'nida.roy81@example.com', 'East', '2023-07-29'),
(82, 'Tanvi Das', 'tanvi.das82@example.com', 'East', '2024-02-10'),
(83, 'Isha Saxena', 'isha.saxena83@example.com', 'East', '2024-04-13'),
(84, 'Tanvi Sharma', 'tanvi.sharma84@example.com', 'North', '2024-04-14'),
(85, 'Mohit Sharma', 'mohit.sharma85@example.com', 'Central', '2023-08-07'),
(86, 'Suhana Reddy', 'suhana.reddy86@example.com', 'South', '2023-12-24'),
(87, 'Chris Das', 'chris.das87@example.com', 'East', '2023-10-19'),
(88, 'Dev Bose', 'dev.bose88@example.com', 'Central', '2024-12-21'),
(89, 'Siddharth Menon', 'siddharth.menon89@example.com', 'Central', '2023-01-09'),
(90, 'Siddharth Saxena', 'siddharth.saxena90@example.com', 'North', '2023-05-18'),
(91, 'Nikhil Verma', 'nikhil.verma91@example.com', 'North', '2024-07-20'),
(92, 'Tara Reddy', 'tara.reddy92@example.com', 'East', '2024-09-11'),
(93, 'Farhan Khandelwal', 'farhan.khandelwal93@example.com', 'East', '2023-07-28'),
(94, 'Nikhil Kapoor', 'nikhil.kapoor94@example.com', 'West', '2023-09-15'),
(95, 'Arjun Sharma', 'arjun.sharma95@example.com', 'West', '2023-10-11'),
(96, 'Emily Singh', 'emily.singh96@example.com', 'East', '2023-05-14'),
(97, 'Nikhil Gupta', 'nikhil.gupta97@example.com', 'West', '2024-07-18'),
(98, 'Shreya Chopra', 'shreya.chopra98@example.com', 'North', '2023-04-25'),
(99, 'Riya Khandelwal', 'riya.khandelwal99@example.com', 'South', '2024-07-12'),
(100, 'Rahul Joshi', 'rahul.joshi100@example.com', 'Central', '2024-07-19');

CREATE TABLE IF NOT EXISTS products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(200),
    category VARCHAR(50),
    unit_price NUMERIC(10,2)
);

INSERT INTO products (product_id, product_name, category, unit_price) VALUES
(1, 'iPhone 15', 'Fashion', 134.64),
(2, 'MacBook Air M3', 'Electronics', 651.10),
(3, 'Sony WH-1000XM5', 'Electronics', 1802.90),
(4, 'Dell Ultrasharp Monitor', 'Home', 344.21),
(5, 'Office Chair Ergonomic', 'Furniture', 456.73),
(6, 'Wooden Desk Large', 'Beauty', 194.90),
(7, 'Nike Air Max', 'Fashion', 278.47),
(8, 'Adidas Hoodie', 'Home', 433.66),
(9, 'Running Shoes', 'Fashion', 265.61),
(10, 'Water Bottle Steel', 'Electronics', 399.75),
(11, 'Cookware Set 10pc', 'Books', 63.68),
(12, 'Dyson Vacuum V11', 'Beauty', 161.44),
(13, 'Apple Watch Series 9', 'Home', 140.73),
(14, 'Canon EOS R10', 'Furniture', 489.92),
(15, 'PlayStation 5', 'Electronics', 1724.26),
(16, 'Kitchen Blender', 'Home', 107.79),
(17, 'Convection Microwave', 'Toys', 178.08),
(18, 'Travel Backpack 40L', 'Home', 119.23),
(19, 'LED Desk Lamp', 'Home', 205.25),
(20, '3-Seater Sofa', 'Sports', 692.84),
(21, 'Dining Table 6-Seater', 'Sports', 287.41),
(22, 'Memory Foam Mattress', 'Beauty', 137.51),
(23, 'Orthopedic Pillow', 'Books', 75.44),
(24, 'Fitbit Inspire', 'Furniture', 1058.59),
(25, 'Pro Treadmill', 'Sports', 151.07),
(26, 'Spalding Basketball', 'Sports', 40.22),
(27, 'Puma Soccer Ball', 'Beauty', 72.41),
(28, 'Bestselling Novel', 'Books', 37.73),
(29, 'Calculus Textbook', 'Furniture', 492.97),
(30, 'Hardcover Notebook', 'Home', 134.81),
(31, 'Matte Lipstick', 'Beauty', 5.33),
(32, 'Eau de Parfum 50ml', 'Home', 188.47),
(33, 'Classic Doll', 'Furniture', 1141.21),
(34, '1000pc Puzzle', 'Books', 51.74),
(35, 'Action Figure 12in', 'Furniture', 877.72),
(36, 'RC Racing Car', 'Sports', 410.63),
(37, 'Strategy Board Game', 'Beauty', 68.61),
(38, 'Floor Lamp Modern', 'Sports', 447.99),
(39, 'Garden Hose 50ft', 'Home', 216.02),
(40, 'Home Tool Kit', 'Beauty', 137.08),
(41, 'Electric Drill', 'Fashion', 188.50),
(42, 'Sunscreen SPF50', 'Sports', 330.80),
(43, 'Shampoo 1L', 'Electronics', 642.56),
(44, 'Conditioner 1L', 'Home', 220.65),
(45, 'Kids Toy Set', 'Books', 39.87),
(46, 'Wireless Charger', 'Toys', 339.44),
(47, 'Bluetooth Speaker', 'Toys', 397.90),
(48, 'Portable Projector', 'Fashion', 201.07),
(49, 'Noise Cancelling Earbuds', 'Sports', 417.21),
(50, 'Smart Home Hub', 'Books', 12.00),
(51, 'Air Purifier', 'Home', 339.67),
(52, 'Electric Kettle', 'Home', 405.22),
(53, 'Juicer Machine', 'Fashion', 17.08),
(54, 'Photo Printer', 'Home', 492.13),
(55, 'Gaming Mouse', 'Furniture', 573.73),
(56, 'Mechanical Keyboard', 'Home', 361.99),
(57, 'Yoga Mat', 'Beauty', 101.40),
(58, 'Dumbbell Set 20kg', 'Home', 82.31),
(59, 'Protein Powder 1kg', 'Electronics', 1790.69),
(60, 'Organic Tea Box', 'Furniture', 945.18);

CREATE TABLE IF NOT EXISTS orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE,
    payment_method VARCHAR(30),
    order_status VARCHAR(30)
);

INSERT INTO orders (order_id, customer_id, order_date, payment_method, order_status) VALUES
(1, 29, '2023-06-30', 'NetBanking', 'Completed'),
(2, 60, '2023-02-21', 'Credit Card', 'Cancelled'),
(3, 16, '2024-04-12', 'UPI', 'Completed'),
(4, 68, '2024-07-26', 'Credit Card', 'Cancelled'),
(5, 57, '2024-09-19', 'NetBanking', 'Pending'),
(6, 55, '2024-07-15', 'Credit Card', 'Completed'),
(7, 61, '2024-04-05', 'UPI', 'Completed'),
(8, 82, '2023-10-11', 'NetBanking', 'Completed'),
(9, 81, '2023-09-02', 'UPI', 'Completed'),
(10, 37, '2023-08-29', 'UPI', 'Completed'),
(11, 70, '2023-03-24', 'UPI', 'Completed'),
(12, 89, '2023-06-06', 'NetBanking', 'Completed'),
(13, 53, '2023-12-05', 'Credit Card', 'Completed'),
(14, 27, '2024-03-06', 'UPI', 'Completed'),
(15, 90, '2023-01-21', 'Wallet', 'Completed'),
(16, 49, '2024-05-03', 'UPI', 'Completed'),
(17, 97, '2024-02-04', 'Wallet', 'Cancelled'),
(18, 54, '2024-07-05', 'NetBanking', 'Completed'),
(19, 78, '2023-08-14', 'Credit Card', 'Completed'),
(20, 63, '2023-01-30', 'UPI', 'Completed'),
(21, 52, '2023-06-19', 'NetBanking', 'Cancelled'),
(22, 80, '2024-06-30', 'UPI', 'Completed'),
(23, 73, '2024-11-09', 'UPI', 'Completed'),
(24, 18, '2024-04-17', 'UPI', 'Completed'),
(25, 42, '2023-08-05', 'Credit Card', 'Completed'),
(26, 49, '2023-10-12', 'NetBanking', 'Pending'),
(27, 33, '2023-03-25', 'Credit Card', 'Completed'),
(28, 7, '2023-12-25', 'UPI', 'Completed'),
(29, 84, '2023-02-11', 'NetBanking', 'Cancelled'),
(30, 26, '2023-01-21', 'Credit Card', 'Completed'),
(31, 61, '2024-11-16', 'UPI', 'Cancelled'),
(32, 60, '2023-09-20', 'NetBanking', 'Completed'),
(33, 78, '2023-04-28', 'NetBanking', 'Completed'),
(34, 40, '2023-04-21', 'Credit Card', 'Cancelled'),
(35, 74, '2024-11-24', 'Wallet', 'Completed'),
(36, 92, '2023-07-23', 'UPI', 'Completed'),
(37, 81, '2023-09-06', 'UPI', 'Completed'),
(38, 88, '2024-09-06', 'NetBanking', 'Completed'),
(39, 73, '2023-02-12', 'UPI', 'Completed'),
(40, 48, '2023-03-12', 'Credit Card', 'Completed'),
(41, 54, '2024-05-16', 'UPI', 'Cancelled'),
(42, 82, '2024-04-15', 'NetBanking', 'Completed'),
(43, 94, '2024-06-18', 'Debit Card', 'Completed'),
(44, 69, '2024-05-10', 'Credit Card', 'Pending'),
(45, 76, '2023-10-02', 'UPI', 'Completed'),
(46, 12, '2023-10-13', 'Wallet', 'Completed'),
(47, 60, '2024-08-06', 'Credit Card', 'Completed'),
(48, 4, '2024-05-21', 'Wallet', 'Completed'),
(49, 28, '2023-12-30', 'NetBanking', 'Completed'),
(50, 77, '2023-10-10', 'Credit Card', 'Completed'),
(51, 25, '2023-03-29', 'UPI', 'Completed'),
(52, 72, '2023-09-04', 'Credit Card', 'Completed'),
(53, 63, '2024-04-03', 'NetBanking', 'Completed'),
(54, 29, '2024-02-19', 'Credit Card', 'Completed'),
(55, 75, '2024-01-13', 'Credit Card', 'Completed'),
(56, 55, '2024-07-17', 'UPI', 'Completed'),
(57, 35, '2023-11-10', 'UPI', 'Completed'),
(58, 25, '2023-11-20', 'UPI', 'Completed'),
(59, 98, '2024-12-07', 'UPI', 'Completed'),
(60, 62, '2023-10-11', 'NetBanking', 'Cancelled'),
(61, 68, '2024-09-03', 'UPI', 'Completed'),
(62, 25, '2023-10-31', 'UPI', 'Completed'),
(63, 2, '2024-06-30', 'UPI', 'Completed'),
(64, 7, '2024-07-20', 'UPI', 'Cancelled'),
(65, 82, '2024-05-17', 'UPI', 'Completed'),
(66, 37, '2024-04-25', 'Credit Card', 'Completed'),
(67, 7, '2023-09-16', 'Wallet', 'Completed'),
(68, 9, '2024-02-15', 'Credit Card', 'Completed'),
(69, 88, '2023-02-24', 'UPI', 'Pending'),
(70, 39, '2023-03-29', 'Debit Card', 'Completed'),
(71, 98, '2024-03-02', 'Credit Card', 'Completed'),
(72, 29, '2024-06-19', 'UPI', 'Cancelled'),
(73, 39, '2024-08-25', 'Debit Card', 'Completed'),
(74, 80, '2023-03-03', 'Credit Card', 'Completed'),
(75, 98, '2023-08-01', 'Credit Card', 'Completed'),
(76, 11, '2023-06-10', 'UPI', 'Completed'),
(77, 21, '2023-01-03', 'Credit Card', 'Completed'),
(78, 61, '2023-10-26', 'UPI', 'Completed'),
(79, 37, '2024-04-09', 'UPI', 'Completed'),
(80, 34, '2024-10-02', 'Credit Card', 'Pending'),
(81, 26, '2024-03-11', 'UPI', 'Completed'),
(82, 20, '2023-09-30', 'NetBanking', 'Completed'),
(83, 22, '2023-11-11', 'Credit Card', 'Pending'),
(84, 37, '2024-03-25', 'UPI', 'Completed'),
(85, 90, '2024-02-17', 'Wallet', 'Completed'),
(86, 64, '2024-03-24', 'UPI', 'Completed'),
(87, 56, '2023-11-27', 'Credit Card', 'Completed'),
(88, 30, '2024-11-21', 'NetBanking', 'Completed'),
(89, 3, '2024-11-19', 'NetBanking', 'Completed'),
(90, 98, '2023-06-29', 'Credit Card', 'Completed'),
(91, 36, '2023-07-05', 'Debit Card', 'Completed'),
(92, 63, '2023-04-04', 'Credit Card', 'Completed'),
(93, 42, '2024-11-17', 'UPI', 'Completed'),
(94, 53, '2024-12-11', 'Credit Card', 'Completed'),
(95, 52, '2024-07-17', 'UPI', 'Completed'),
(96, 33, '2023-11-28', 'UPI', 'Completed'),
(97, 66, '2023-01-02', 'Credit Card', 'Completed'),
(98, 53, '2023-02-25', 'UPI', 'Completed'),
(99, 97, '2024-05-25', 'Credit Card', 'Completed'),
(100, 27, '2023-10-01', 'Credit Card', 'Cancelled'),
(101, 57, '2024-05-11', 'UPI', 'Cancelled'),
(102, 78, '2023-09-03', 'NetBanking', 'Completed'),
(103, 2, '2024-07-19', 'Credit Card', 'Completed'),
(104, 15, '2024-04-17', 'Wallet', 'Completed'),
(105, 20, '2024-05-25', 'Wallet', 'Completed'),
(106, 91, '2023-10-07', 'Credit Card', 'Completed'),
(107, 61, '2023-09-07', 'Credit Card', 'Completed'),
(108, 25, '2024-09-05', 'Credit Card', 'Pending'),
(109, 9, '2023-10-10', 'NetBanking', 'Pending'),
(110, 44, '2024-06-03', 'UPI', 'Completed'),
(111, 93, '2023-11-02', 'NetBanking', 'Completed'),
(112, 85, '2024-05-16', 'Wallet', 'Completed'),
(113, 62, '2023-12-20', 'UPI', 'Completed'),
(114, 49, '2024-04-11', 'Wallet', 'Pending'),
(115, 90, '2023-09-02', 'Credit Card', 'Completed'),
(116, 100, '2024-02-25', 'UPI', 'Completed'),
(117, 91, '2024-01-26', 'UPI', 'Completed'),
(118, 84, '2023-06-05', 'Credit Card', 'Completed'),
(119, 65, '2024-08-27', 'UPI', 'Completed'),
(120, 57, '2023-04-13', 'Credit Card', 'Completed'),
(121, 93, '2023-05-28', 'Credit Card', 'Completed'),
(122, 20, '2023-03-18', 'Credit Card', 'Cancelled'),
(123, 44, '2024-09-30', 'Credit Card', 'Completed'),
(124, 43, '2024-11-21', 'Wallet', 'Completed'),
(125, 41, '2024-10-03', 'NetBanking', 'Completed'),
(126, 70, '2023-02-06', 'Credit Card', 'Completed'),
(127, 88, '2023-10-22', 'Debit Card', 'Completed'),
(128, 56, '2023-04-11', 'NetBanking', 'Completed'),
(129, 13, '2024-03-30', 'UPI', 'Completed'),
(130, 4, '2023-02-17', 'UPI', 'Completed'),
(131, 46, '2024-01-19', 'Credit Card', 'Completed'),
(132, 53, '2024-08-02', 'Credit Card', 'Completed'),
(133, 23, '2023-03-22', 'Credit Card', 'Completed'),
(134, 88, '2023-09-04', 'Credit Card', 'Completed'),
(135, 30, '2024-04-17', 'Credit Card', 'Completed'),
(136, 86, '2023-01-10', 'Wallet', 'Completed'),
(137, 37, '2024-11-24', 'Credit Card', 'Completed'),
(138, 45, '2024-08-24', 'UPI', 'Cancelled'),
(139, 89, '2023-09-14', 'Credit Card', 'Completed'),
(140, 50, '2024-05-09', 'UPI', 'Completed'),
(141, 46, '2024-08-11', 'UPI', 'Completed'),
(142, 3, '2024-11-05', 'UPI', 'Completed'),
(143, 88, '2023-02-20', 'Wallet', 'Completed'),
(144, 37, '2023-08-24', 'Credit Card', 'Completed'),
(145, 82, '2023-07-14', 'Credit Card', 'Completed'),
(146, 93, '2024-11-06', 'Credit Card', 'Completed'),
(147, 13, '2024-10-04', 'Credit Card', 'Completed'),
(148, 57, '2023-02-04', 'Credit Card', 'Completed'),
(149, 12, '2023-10-30', 'UPI', 'Completed'),
(150, 26, '2023-05-16', 'NetBanking', 'Pending'),
(151, 47, '2024-06-27', 'Credit Card', 'Completed'),
(152, 22, '2023-09-21', 'Wallet', 'Cancelled'),
(153, 38, '2023-12-13', 'NetBanking', 'Completed'),
(154, 10, '2023-05-25', 'NetBanking', 'Completed'),
(155, 87, '2024-11-21', 'Debit Card', 'Cancelled'),
(156, 72, '2024-01-10', 'UPI', 'Completed'),
(157, 34, '2024-07-03', 'UPI', 'Completed'),
(158, 96, '2024-11-19', 'UPI', 'Completed'),
(159, 82, '2024-01-16', 'UPI', 'Completed'),
(160, 4, '2024-09-26', 'Wallet', 'Completed'),
(161, 79, '2023-08-15', 'Credit Card', 'Completed'),
(162, 60, '2023-11-06', 'Credit Card', 'Completed'),
(163, 6, '2023-02-08', 'UPI', 'Completed'),
(164, 13, '2023-08-29', 'Wallet', 'Completed'),
(165, 59, '2024-01-15', 'Credit Card', 'Completed'),
(166, 70, '2024-03-05', 'Credit Card', 'Completed'),
(167, 54, '2024-11-01', 'UPI', 'Completed'),
(168, 53, '2023-10-14', 'UPI', 'Completed'),
(169, 57, '2024-03-31', 'Debit Card', 'Pending'),
(170, 13, '2024-12-03', 'UPI', 'Cancelled'),
(171, 83, '2024-01-03', 'UPI', 'Completed'),
(172, 16, '2024-04-10', 'UPI', 'Completed'),
(173, 82, '2024-09-03', 'Debit Card', 'Completed'),
(174, 43, '2023-09-07', 'Debit Card', 'Completed'),
(175, 27, '2023-03-12', 'NetBanking', 'Completed'),
(176, 76, '2023-08-10', 'NetBanking', 'Completed'),
(177, 100, '2023-06-01', 'NetBanking', 'Completed'),
(178, 36, '2023-05-29', 'Debit Card', 'Completed'),
(179, 23, '2023-04-23', 'Credit Card', 'Completed'),
(180, 2, '2024-01-02', 'NetBanking', 'Completed'),
(181, 42, '2023-01-17', 'UPI', 'Completed'),
(182, 95, '2024-03-07', 'Credit Card', 'Completed'),
(183, 61, '2024-04-04', 'NetBanking', 'Completed'),
(184, 14, '2024-04-07', 'Credit Card', 'Cancelled'),
(185, 6, '2024-11-05', 'Credit Card', 'Completed'),
(186, 4, '2023-03-04', 'Debit Card', 'Pending'),
(187, 55, '2024-12-03', 'UPI', 'Completed'),
(188, 57, '2023-03-17', 'Wallet', 'Completed'),
(189, 19, '2023-03-09', 'UPI', 'Completed'),
(190, 75, '2024-07-15', 'NetBanking', 'Completed'),
(191, 77, '2024-06-27', 'UPI', 'Completed'),
(192, 56, '2023-04-12', 'NetBanking', 'Completed'),
(193, 84, '2024-10-28', 'Wallet', 'Completed'),
(194, 28, '2024-03-16', 'Credit Card', 'Completed'),
(195, 44, '2024-04-09', 'UPI', 'Completed'),
(196, 41, '2024-03-13', 'UPI', 'Completed'),
(197, 20, '2024-12-04', 'Wallet', 'Completed'),
(198, 11, '2023-04-06', 'Credit Card', 'Completed'),
(199, 48, '2023-05-14', 'Credit Card', 'Completed'),
(200, 72, '2024-07-29', 'UPI', 'Completed'),
(201, 46, '2024-11-12', 'Wallet', 'Completed'),
(202, 93, '2023-02-22', 'Debit Card', 'Completed'),
(203, 46, '2023-04-17', 'Credit Card', 'Completed'),
(204, 85, '2024-05-08', 'UPI', 'Completed'),
(205, 72, '2024-01-12', 'UPI', 'Completed'),
(206, 29, '2024-03-15', 'NetBanking', 'Cancelled'),
(207, 80, '2024-09-20', 'Credit Card', 'Completed'),
(208, 78, '2024-11-04', 'NetBanking', 'Completed'),
(209, 24, '2023-10-07', 'NetBanking', 'Completed'),
(210, 44, '2023-12-26', 'UPI', 'Pending'),
(211, 73, '2024-11-04', 'Credit Card', 'Completed'),
(212, 82, '2023-02-01', 'UPI', 'Completed'),
(213, 49, '2024-03-05', 'Credit Card', 'Completed'),
(214, 40, '2023-11-29', 'NetBanking', 'Completed'),
(215, 11, '2023-02-23', 'UPI', 'Completed'),
(216, 7, '2024-11-21', 'UPI', 'Completed'),
(217, 55, '2024-05-12', 'Credit Card', 'Completed'),
(218, 28, '2024-06-08', 'UPI', 'Completed'),
(219, 37, '2024-11-25', 'Credit Card', 'Completed'),
(220, 86, '2023-11-12', 'UPI', 'Completed'),
(221, 77, '2023-02-26', 'UPI', 'Completed'),
(222, 28, '2023-05-21', 'NetBanking', 'Completed'),
(223, 16, '2023-01-08', 'Credit Card', 'Completed'),
(224, 17, '2024-01-25', 'Credit Card', 'Completed'),
(225, 72, '2024-11-15', 'NetBanking', 'Completed'),
(226, 95, '2023-02-13', 'Credit Card', 'Completed'),
(227, 10, '2023-11-17', 'Credit Card', 'Completed'),
(228, 91, '2024-10-17', 'Credit Card', 'Completed'),
(229, 3, '2023-11-29', 'UPI', 'Cancelled'),
(230, 59, '2024-12-07', 'Wallet', 'Completed'),
(231, 14, '2023-09-07', 'Credit Card', 'Completed'),
(232, 11, '2024-02-10', 'Wallet', 'Completed'),
(233, 29, '2023-12-08', 'NetBanking', 'Completed'),
(234, 82, '2023-04-27', 'Credit Card', 'Completed'),
(235, 100, '2023-12-24', 'UPI', 'Cancelled'),
(236, 83, '2023-06-01', 'UPI', 'Completed'),
(237, 26, '2023-06-27', 'Credit Card', 'Completed'),
(238, 84, '2023-03-19', 'UPI', 'Completed'),
(239, 64, '2024-04-20', 'NetBanking', 'Completed'),
(240, 58, '2024-11-28', 'Wallet', 'Completed'),
(241, 82, '2024-10-01', 'UPI', 'Cancelled'),
(242, 41, '2023-06-04', 'Credit Card', 'Completed'),
(243, 81, '2023-11-07', 'NetBanking', 'Completed'),
(244, 46, '2024-06-03', 'UPI', 'Completed'),
(245, 5, '2023-02-28', 'UPI', 'Completed'),
(246, 83, '2023-04-03', 'Credit Card', 'Completed'),
(247, 60, '2024-08-17', 'Credit Card', 'Completed'),
(248, 6, '2024-04-05', 'Wallet', 'Completed'),
(249, 25, '2023-11-26', 'Credit Card', 'Completed'),
(250, 8, '2024-04-06', 'UPI', 'Pending'),
(251, 44, '2023-03-28', 'Credit Card', 'Completed'),
(252, 32, '2024-03-24', 'Debit Card', 'Completed'),
(253, 79, '2023-06-12', 'UPI', 'Cancelled'),
(254, 50, '2024-02-23', 'NetBanking', 'Completed'),
(255, 7, '2024-10-08', 'Credit Card', 'Completed'),
(256, 13, '2024-07-25', 'Credit Card', 'Completed'),
(257, 93, '2024-11-03', 'Debit Card', 'Completed'),
(258, 20, '2023-12-08', 'UPI', 'Completed'),
(259, 45, '2023-11-14', 'Debit Card', 'Completed'),
(260, 51, '2023-05-13', 'Credit Card', 'Cancelled'),
(261, 40, '2024-07-26', 'UPI', 'Completed'),
(262, 17, '2024-11-17', 'NetBanking', 'Cancelled'),
(263, 88, '2024-06-23', 'UPI', 'Completed'),
(264, 66, '2024-01-06', 'UPI', 'Completed'),
(265, 28, '2023-12-16', 'Wallet', 'Completed'),
(266, 29, '2023-05-21', 'UPI', 'Completed'),
(267, 13, '2024-06-03', 'NetBanking', 'Pending'),
(268, 68, '2023-02-08', 'Credit Card', 'Pending'),
(269, 80, '2023-05-15', 'Credit Card', 'Completed'),
(270, 24, '2024-12-10', 'NetBanking', 'Pending'),
(271, 22, '2024-03-24', 'UPI', 'Completed'),
(272, 93, '2023-09-01', 'Debit Card', 'Completed'),
(273, 97, '2024-04-04', 'UPI', 'Completed'),
(274, 61, '2023-07-18', 'UPI', 'Cancelled'),
(275, 57, '2024-04-17', 'NetBanking', 'Completed'),
(276, 65, '2024-06-24', 'Credit Card', 'Completed'),
(277, 26, '2024-09-11', 'UPI', 'Completed'),
(278, 83, '2024-05-07', 'Wallet', 'Completed'),
(279, 14, '2024-06-12', 'Wallet', 'Completed'),
(280, 98, '2023-06-14', 'UPI', 'Cancelled'),
(281, 19, '2024-03-23', 'UPI', 'Cancelled'),
(282, 58, '2023-12-24', 'Wallet', 'Completed'),
(283, 51, '2024-05-29', 'UPI', 'Completed'),
(284, 11, '2024-01-19', 'UPI', 'Completed'),
(285, 13, '2024-10-27', 'UPI', 'Completed'),
(286, 5, '2023-10-21', 'Wallet', 'Completed'),
(287, 18, '2024-04-25', 'Credit Card', 'Completed'),
(288, 11, '2023-01-20', 'UPI', 'Pending'),
(289, 71, '2024-09-15', 'Credit Card', 'Completed'),
(290, 37, '2023-09-01', 'UPI', 'Completed'),
(291, 54, '2024-10-16', 'NetBanking', 'Completed'),
(292, 15, '2024-05-26', 'Credit Card', 'Completed'),
(293, 66, '2024-08-11', 'UPI', 'Completed'),
(294, 55, '2023-01-02', 'Credit Card', 'Completed'),
(295, 54, '2023-07-11', 'Credit Card', 'Completed'),
(296, 47, '2023-03-11', 'Debit Card', 'Completed'),
(297, 65, '2024-07-21', 'UPI', 'Pending'),
(298, 6, '2024-10-12', 'UPI', 'Completed'),
(299, 96, '2023-01-17', 'UPI', 'Completed'),
(300, 31, '2024-11-03', 'Credit Card', 'Completed'),
(301, 95, '2023-12-07', 'UPI', 'Completed'),
(302, 44, '2024-10-20', 'UPI', 'Completed'),
(303, 60, '2024-12-13', 'Credit Card', 'Completed'),
(304, 18, '2023-03-06', 'NetBanking', 'Cancelled'),
(305, 5, '2023-10-28', 'UPI', 'Completed'),
(306, 6, '2023-11-20', 'Wallet', 'Completed'),
(307, 70, '2024-04-29', 'UPI', 'Completed'),
(308, 25, '2023-10-20', 'UPI', 'Completed'),
(309, 84, '2023-12-06', 'UPI', 'Completed'),
(310, 56, '2024-02-14', 'NetBanking', 'Pending'),
(311, 50, '2023-12-14', 'Debit Card', 'Completed'),
(312, 64, '2024-01-12', 'Wallet', 'Completed'),
(313, 11, '2024-03-10', 'UPI', 'Completed'),
(314, 24, '2024-07-12', 'UPI', 'Completed'),
(315, 42, '2024-11-07', 'UPI', 'Completed'),
(316, 92, '2024-03-12', 'UPI', 'Completed'),
(317, 58, '2023-02-13', 'NetBanking', 'Cancelled'),
(318, 79, '2024-03-21', 'UPI', 'Cancelled'),
(319, 8, '2023-03-18', 'Credit Card', 'Completed'),
(320, 66, '2024-11-26', 'UPI', 'Completed'),
(321, 78, '2024-11-25', 'NetBanking', 'Completed'),
(322, 9, '2023-08-30', 'NetBanking', 'Completed'),
(323, 50, '2024-08-03', 'UPI', 'Completed'),
(324, 58, '2024-01-15', 'UPI', 'Completed'),
(325, 74, '2023-05-21', 'Credit Card', 'Completed'),
(326, 84, '2023-10-13', 'UPI', 'Completed'),
(327, 95, '2023-07-10', 'Credit Card', 'Completed'),
(328, 72, '2023-05-01', 'UPI', 'Completed'),
(329, 58, '2023-08-08', 'Debit Card', 'Completed'),
(330, 63, '2023-07-24', 'UPI', 'Pending'),
(331, 58, '2023-06-26', 'Wallet', 'Completed'),
(332, 12, '2024-11-29', 'Debit Card', 'Cancelled'),
(333, 86, '2023-12-22', 'NetBanking', 'Completed'),
(334, 38, '2023-11-04', 'Wallet', 'Completed'),
(335, 90, '2024-10-15', 'UPI', 'Completed'),
(336, 29, '2023-05-05', 'Debit Card', 'Completed'),
(337, 31, '2024-05-20', 'UPI', 'Completed'),
(338, 48, '2024-04-23', 'NetBanking', 'Completed'),
(339, 79, '2023-03-30', 'UPI', 'Completed'),
(340, 92, '2024-05-05', 'Credit Card', 'Completed'),
(341, 74, '2023-03-17', 'UPI', 'Completed'),
(342, 10, '2024-04-05', 'Credit Card', 'Completed'),
(343, 17, '2024-07-18', 'Credit Card', 'Completed'),
(344, 17, '2024-03-19', 'Credit Card', 'Pending'),
(345, 16, '2024-06-14', 'UPI', 'Completed'),
(346, 42, '2023-08-19', 'UPI', 'Cancelled'),
(347, 37, '2023-03-22', 'UPI', 'Completed'),
(348, 71, '2023-10-09', 'UPI', 'Completed'),
(349, 69, '2023-04-06', 'Credit Card', 'Completed'),
(350, 75, '2023-06-07', 'UPI', 'Completed'),
(351, 78, '2023-12-12', 'NetBanking', 'Completed'),
(352, 4, '2023-03-25', 'UPI', 'Completed'),
(353, 74, '2023-09-29', 'Credit Card', 'Completed'),
(354, 54, '2024-09-24', 'Credit Card', 'Completed'),
(355, 81, '2024-07-12', 'UPI', 'Cancelled'),
(356, 62, '2023-09-08', 'NetBanking', 'Completed'),
(357, 39, '2024-04-09', 'UPI', 'Completed'),
(358, 57, '2024-03-01', 'Credit Card', 'Completed'),
(359, 78, '2023-05-28', 'UPI', 'Completed'),
(360, 94, '2023-12-20', 'Debit Card', 'Completed'),
(361, 48, '2024-06-11', 'Credit Card', 'Completed'),
(362, 60, '2023-05-06', 'UPI', 'Completed'),
(363, 13, '2023-02-21', 'UPI', 'Completed'),
(364, 79, '2024-03-04', 'UPI', 'Pending'),
(365, 21, '2023-12-02', 'Wallet', 'Completed'),
(366, 25, '2023-06-13', 'Credit Card', 'Completed'),
(367, 64, '2023-11-12', 'Credit Card', 'Completed'),
(368, 51, '2024-06-01', 'Credit Card', 'Completed'),
(369, 75, '2023-12-28', 'UPI', 'Completed'),
(370, 77, '2024-10-31', 'Credit Card', 'Completed'),
(371, 2, '2023-04-21', 'Credit Card', 'Pending'),
(372, 94, '2024-01-10', 'NetBanking', 'Completed'),
(373, 52, '2023-02-22', 'Credit Card', 'Completed'),
(374, 71, '2023-10-23', 'UPI', 'Completed'),
(375, 98, '2024-07-17', 'UPI', 'Cancelled'),
(376, 88, '2024-09-17', 'UPI', 'Cancelled'),
(377, 51, '2024-01-18', 'NetBanking', 'Completed'),
(378, 47, '2023-05-28', 'UPI', 'Completed'),
(379, 65, '2023-02-11', 'UPI', 'Completed'),
(380, 43, '2024-04-30', 'Credit Card', 'Completed'),
(381, 66, '2023-05-24', 'UPI', 'Completed'),
(382, 21, '2024-02-07', 'Debit Card', 'Completed'),
(383, 39, '2024-08-30', 'UPI', 'Pending'),
(384, 69, '2024-05-16', 'NetBanking', 'Completed'),
(385, 3, '2024-01-13', 'UPI', 'Completed'),
(386, 54, '2024-08-20', 'UPI', 'Pending'),
(387, 89, '2024-10-06', 'UPI', 'Completed'),
(388, 84, '2024-08-15', 'Credit Card', 'Completed'),
(389, 75, '2024-05-06', 'UPI', 'Completed'),
(390, 80, '2024-01-25', 'UPI', 'Completed'),
(391, 5, '2024-08-09', 'Wallet', 'Completed'),
(392, 3, '2024-03-27', 'UPI', 'Completed'),
(393, 89, '2023-07-28', 'Credit Card', 'Completed'),
(394, 61, '2023-03-05', 'NetBanking', 'Completed'),
(395, 72, '2023-11-29', 'Debit Card', 'Completed'),
(396, 49, '2023-11-18', 'Debit Card', 'Completed'),
(397, 69, '2023-12-17', 'Credit Card', 'Completed'),
(398, 93, '2024-11-28', 'Credit Card', 'Completed'),
(399, 79, '2024-05-10', 'UPI', 'Completed'),
(400, 72, '2023-11-02', 'UPI', 'Cancelled'),
(401, 39, '2023-10-23', 'NetBanking', 'Completed'),
(402, 63, '2023-11-21', 'Credit Card', 'Completed'),
(403, 93, '2023-10-08', 'UPI', 'Completed'),
(404, 70, '2024-01-24', 'Wallet', 'Completed'),
(405, 45, '2023-05-30', 'UPI', 'Completed'),
(406, 92, '2023-03-22', 'UPI', 'Completed'),
(407, 33, '2024-05-05', 'UPI', 'Pending'),
(408, 35, '2024-07-29', 'Credit Card', 'Completed'),
(409, 79, '2024-08-23', 'UPI', 'Completed'),
(410, 68, '2023-08-20', 'Credit Card', 'Completed'),
(411, 53, '2023-12-05', 'NetBanking', 'Completed'),
(412, 99, '2023-05-21', 'UPI', 'Completed'),
(413, 21, '2024-02-21', 'Credit Card', 'Pending'),
(414, 61, '2024-05-03', 'Credit Card', 'Completed'),
(415, 37, '2023-11-25', 'UPI', 'Completed'),
(416, 99, '2023-04-02', 'Credit Card', 'Completed'),
(417, 95, '2023-02-08', 'Wallet', 'Completed'),
(418, 23, '2023-02-07', 'Debit Card', 'Completed'),
(419, 64, '2023-07-10', 'Wallet', 'Cancelled'),
(420, 38, '2023-02-08', 'UPI', 'Completed'),
(421, 14, '2023-12-10', 'UPI', 'Cancelled'),
(422, 70, '2024-06-20', 'Credit Card', 'Cancelled'),
(423, 65, '2024-04-24', 'UPI', 'Pending'),
(424, 43, '2023-06-16', 'NetBanking', 'Completed'),
(425, 92, '2023-07-10', 'UPI', 'Completed'),
(426, 38, '2024-08-04', 'Credit Card', 'Completed'),
(427, 79, '2024-10-16', 'Wallet', 'Pending'),
(428, 66, '2023-12-02', 'UPI', 'Completed'),
(429, 24, '2023-05-24', 'Credit Card', 'Cancelled'),
(430, 1, '2023-09-25', 'UPI', 'Completed'),
(431, 35, '2023-12-04', 'UPI', 'Completed'),
(432, 2, '2023-09-25', 'Credit Card', 'Completed'),
(433, 8, '2024-11-14', 'UPI', 'Completed'),
(434, 52, '2024-12-03', 'Credit Card', 'Pending'),
(435, 91, '2023-11-15', 'Credit Card', 'Completed'),
(436, 38, '2024-01-12', 'Credit Card', 'Completed'),
(437, 18, '2024-05-04', 'UPI', 'Completed'),
(438, 78, '2024-01-18', 'Credit Card', 'Completed'),
(439, 61, '2024-07-04', 'NetBanking', 'Pending'),
(440, 98, '2023-09-11', 'Credit Card', 'Completed'),
(441, 11, '2024-06-22', 'Credit Card', 'Completed'),
(442, 10, '2024-07-31', 'UPI', 'Pending'),
(443, 65, '2023-07-27', 'Credit Card', 'Completed'),
(444, 42, '2024-06-16', 'Credit Card', 'Completed'),
(445, 92, '2024-08-20', 'Credit Card', 'Pending'),
(446, 58, '2023-02-26', 'Credit Card', 'Completed'),
(447, 59, '2024-07-31', 'UPI', 'Completed'),
(448, 40, '2023-01-23', 'UPI', 'Pending'),
(449, 96, '2023-08-12', 'Credit Card', 'Completed'),
(450, 45, '2023-03-07', 'Credit Card', 'Completed'),
(451, 9, '2024-04-28', 'UPI', 'Completed'),
(452, 99, '2023-05-19', 'NetBanking', 'Cancelled'),
(453, 83, '2024-03-06', 'UPI', 'Pending'),
(454, 58, '2024-01-22', 'UPI', 'Completed'),
(455, 85, '2024-07-06', 'UPI', 'Pending'),
(456, 16, '2023-07-02', 'Debit Card', 'Completed'),
(457, 17, '2023-08-17', 'NetBanking', 'Completed'),
(458, 39, '2024-04-19', 'Credit Card', 'Completed'),
(459, 69, '2024-01-24', 'NetBanking', 'Completed'),
(460, 45, '2023-06-08', 'UPI', 'Cancelled'),
(461, 93, '2023-04-26', 'UPI', 'Completed'),
(462, 79, '2023-01-17', 'UPI', 'Completed'),
(463, 77, '2023-02-04', 'Credit Card', 'Completed'),
(464, 7, '2023-09-08', 'NetBanking', 'Completed'),
(465, 30, '2024-07-06', 'UPI', 'Pending'),
(466, 8, '2023-05-24', 'Credit Card', 'Completed'),
(467, 94, '2024-08-12', 'UPI', 'Completed'),
(468, 87, '2023-11-25', 'UPI', 'Pending'),
(469, 85, '2024-06-17', 'UPI', 'Completed'),
(470, 8, '2024-07-24', 'Wallet', 'Pending'),
(471, 23, '2024-10-03', 'Credit Card', 'Completed'),
(472, 7, '2023-12-19', 'Wallet', 'Completed'),
(473, 68, '2023-11-23', 'Credit Card', 'Completed'),
(474, 39, '2024-01-21', 'UPI', 'Completed'),
(475, 31, '2023-08-19', 'UPI', 'Completed'),
(476, 60, '2023-03-01', 'Credit Card', 'Cancelled'),
(477, 72, '2024-06-26', 'UPI', 'Completed'),
(478, 27, '2023-12-05', 'Credit Card', 'Cancelled'),
(479, 48, '2023-04-05', 'Credit Card', 'Pending'),
(480, 7, '2023-10-02', 'UPI', 'Completed'),
(481, 6, '2023-03-16', 'UPI', 'Completed'),
(482, 93, '2024-11-18', 'Credit Card', 'Completed'),
(483, 43, '2023-11-07', 'Debit Card', 'Completed'),
(484, 25, '2023-05-01', 'NetBanking', 'Completed'),
(485, 32, '2024-12-13', 'Credit Card', 'Completed'),
(486, 31, '2024-07-19', 'UPI', 'Completed'),
(487, 60, '2024-06-30', 'Credit Card', 'Completed'),
(488, 47, '2024-06-09', 'Wallet', 'Completed'),
(489, 93, '2024-04-25', 'NetBanking', 'Completed'),
(490, 27, '2024-01-15', 'UPI', 'Completed'),
(491, 29, '2023-05-30', 'UPI', 'Completed'),
(492, 75, '2024-08-16', 'NetBanking', 'Completed'),
(493, 26, '2023-12-04', 'UPI', 'Completed'),
(494, 32, '2024-05-26', 'Credit Card', 'Cancelled'),
(495, 44, '2023-09-21', 'NetBanking', 'Completed'),
(496, 93, '2024-10-19', 'NetBanking', 'Completed'),
(497, 94, '2023-12-27', 'UPI', 'Completed'),
(498, 63, '2023-07-08', 'Wallet', 'Completed'),
(499, 83, '2023-03-02', 'Credit Card', 'Pending'),
(500, 10, '2024-11-15', 'UPI', 'Completed');

CREATE TABLE IF NOT EXISTS order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(product_id),
    quantity INT,
    price NUMERIC(10,2)
);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES
(1, 1, 41, 1, 188.50),
(2, 2, 1, 1, 134.64),
(3, 2, 30, 1, 134.81),
(4, 3, 43, 3, 642.56),
(5, 3, 59, 1, 1790.69),
(6, 4, 1, 1, 134.64),
(7, 5, 2, 1, 651.10),
(8, 6, 19, 1, 205.25),
(9, 7, 44, 1, 220.65),
(10, 7, 59, 1, 1790.69),
(11, 8, 34, 1, 51.74),
(12, 8, 13, 1, 140.73),
(13, 8, 17, 2, 178.08),
(14, 9, 26, 1, 40.22),
(15, 10, 30, 1, 134.81),
(16, 10, 45, 1, 39.87),
(17, 10, 44, 2, 220.65),
(18, 11, 55, 1, 573.73),
(19, 12, 26, 1, 40.22),
(20, 13, 4, 1, 344.21),
(21, 14, 6, 1, 194.90),
(22, 14, 28, 1, 37.73),
(23, 15, 55, 4, 573.73),
(24, 16, 59, 1, 1790.69),
(25, 16, 14, 3, 489.92),
(26, 17, 37, 1, 68.61),
(27, 17, 3, 3, 1802.90),
(28, 18, 18, 2, 119.23),
(29, 18, 37, 1, 68.61),
(30, 19, 55, 1, 573.73),
(31, 20, 38, 1, 447.99),
(32, 20, 53, 2, 17.08),
(33, 20, 26, 3, 40.22),
(34, 21, 37, 1, 68.61),
(35, 22, 25, 1, 151.07),
(36, 22, 35, 1, 877.72),
(37, 23, 9, 2, 265.61),
(38, 23, 45, 2, 39.87),
(39, 24, 23, 1, 75.44),
(40, 25, 54, 1, 492.13),
(41, 26, 40, 3, 137.08),
(42, 26, 26, 3, 40.22),
(43, 27, 41, 1, 188.50),
(44, 28, 32, 1, 188.47),
(45, 28, 36, 3, 410.63),
(46, 28, 28, 1, 37.73),
(47, 29, 25, 1, 151.07),
(48, 30, 52, 1, 405.22),
(49, 30, 5, 1, 456.73),
(50, 31, 46, 2, 339.44),
(51, 32, 25, 1, 151.07),
(52, 33, 1, 3, 134.64),
(53, 34, 49, 1, 417.21),
(54, 35, 12, 1, 161.44),
(55, 36, 33, 1, 1141.21),
(56, 37, 23, 1, 75.44),
(57, 38, 51, 1, 339.67),
(58, 39, 19, 1, 205.25),
(59, 40, 47, 3, 397.90),
(60, 40, 58, 4, 82.31),
(61, 41, 34, 1, 51.74),
(62, 42, 9, 1, 265.61),
(63, 43, 10, 1, 399.75),
(64, 44, 27, 1, 72.41),
(65, 45, 24, 1, 1058.59),
(66, 45, 16, 2, 107.79),
(67, 46, 40, 1, 137.08),
(68, 47, 20, 1, 692.84),
(69, 48, 54, 1, 492.13),
(70, 49, 22, 1, 137.51),
(71, 49, 28, 2, 37.73),
(72, 50, 39, 1, 216.02),
(73, 50, 21, 1, 287.41),
(74, 51, 31, 1, 5.33),
(75, 51, 26, 3, 40.22),
(76, 52, 45, 1, 39.87),
(77, 53, 51, 1, 339.67),
(78, 53, 25, 1, 151.07),
(79, 53, 51, 1, 339.67),
(80, 54, 37, 1, 68.61),
(81, 55, 12, 1, 161.44),
(82, 55, 36, 1, 410.63),
(83, 55, 47, 1, 397.90),
(84, 56, 29, 2, 492.97),
(85, 56, 54, 1, 492.13),
(86, 57, 51, 2, 339.67),
(87, 57, 44, 1, 220.65),
(88, 58, 16, 1, 107.79),
(89, 58, 10, 2, 399.75),
(90, 59, 5, 1, 456.73),
(91, 59, 39, 1, 216.02),
(92, 60, 33, 3, 1141.21),
(93, 61, 27, 1, 72.41),
(94, 61, 51, 3, 339.67),
(95, 62, 52, 1, 405.22),
(96, 62, 41, 3, 188.50),
(97, 63, 16, 1, 107.79),
(98, 64, 42, 1, 330.80),
(99, 65, 42, 1, 330.80),
(100, 66, 49, 1, 417.21),
(101, 67, 7, 1, 278.47),
(102, 67, 17, 1, 178.08),
(103, 68, 36, 1, 410.63),
(104, 68, 37, 1, 68.61),
(105, 69, 30, 2, 134.81),
(106, 70, 33, 1, 1141.21),
(107, 71, 31, 1, 5.33),
(108, 71, 27, 3, 72.41),
(109, 71, 6, 1, 194.90),
(110, 72, 10, 1, 399.75),
(111, 72, 22, 1, 137.51),
(112, 72, 14, 1, 489.92),
(113, 73, 7, 1, 278.47),
(114, 74, 21, 1, 287.41),
(115, 74, 3, 2, 1802.90),
(116, 75, 55, 1, 573.73),
(117, 76, 52, 1, 405.22),
(118, 77, 16, 1, 107.79),
(119, 77, 36, 1, 410.63),
(120, 77, 36, 1, 410.63),
(121, 78, 52, 1, 405.22),
(122, 79, 41, 1, 188.50),
(123, 80, 48, 1, 201.07),
(124, 81, 38, 1, 447.99),
(125, 82, 14, 1, 489.92),
(126, 83, 52, 2, 405.22),
(127, 83, 37, 1, 68.61),
(128, 84, 12, 1, 161.44),
(129, 84, 13, 1, 140.73),
(130, 85, 56, 1, 361.99),
(131, 86, 21, 1, 287.41),
(132, 86, 40, 1, 137.08),
(133, 86, 8, 1, 433.66),
(134, 87, 40, 1, 137.08),
(135, 87, 44, 2, 220.65),
(136, 88, 40, 1, 137.08),
(137, 89, 21, 1, 287.41),
(138, 89, 20, 1, 692.84),
(139, 90, 10, 1, 399.75),
(140, 91, 9, 1, 265.61),
(141, 92, 32, 1, 188.47),
(142, 93, 42, 3, 330.80),
(143, 93, 12, 1, 161.44),
(144, 94, 9, 1, 265.61),
(145, 95, 40, 1, 137.08),
(146, 95, 23, 3, 75.44),
(147, 96, 13, 2, 140.73),
(148, 97, 33, 1, 1141.21),
(149, 97, 27, 1, 72.41),
(150, 97, 27, 2, 72.41),
(151, 98, 11, 1, 63.68),
(152, 99, 49, 1, 417.21),
(153, 100, 15, 1, 1724.26),
(154, 101, 30, 1, 134.81),
(155, 102, 32, 1, 188.47),
(156, 102, 8, 1, 433.66),
(157, 103, 35, 2, 877.72),
(158, 104, 53, 2, 17.08),
(159, 105, 29, 1, 492.97),
(160, 105, 28, 1, 37.73),
(161, 106, 49, 1, 417.21),
(162, 106, 56, 4, 361.99),
(163, 107, 23, 2, 75.44),
(164, 108, 56, 4, 361.99),
(165, 109, 16, 1, 107.79),
(166, 109, 48, 1, 201.07),
(167, 110, 46, 1, 339.44),
(168, 111, 40, 1, 137.08),
(169, 112, 14, 2, 489.92),
(170, 113, 35, 1, 877.72),
(171, 114, 21, 4, 287.41),
(172, 115, 37, 1, 68.61),
(173, 116, 58, 1, 82.31),
(174, 116, 7, 1, 278.47),
(175, 117, 27, 3, 72.41),
(176, 117, 18, 2, 119.23),
(177, 118, 56, 1, 361.99),
(178, 119, 21, 2, 287.41),
(179, 120, 44, 1, 220.65),
(180, 120, 10, 1, 399.75),
(181, 121, 27, 1, 72.41),
(182, 122, 51, 2, 339.67),
(183, 123, 33, 2, 1141.21),
(184, 124, 57, 1, 101.40),
(185, 124, 32, 1, 188.47),
(186, 125, 50, 2, 12.00),
(187, 126, 30, 1, 134.81),
(188, 127, 55, 1, 573.73),
(189, 127, 35, 1, 877.72),
(190, 128, 53, 1, 17.08),
(191, 128, 18, 1, 119.23),
(192, 128, 19, 1, 205.25),
(193, 129, 37, 2, 68.61),
(194, 130, 58, 1, 82.31),
(195, 130, 4, 1, 344.21),
(196, 131, 54, 1, 492.13),
(197, 131, 8, 3, 433.66),
(198, 132, 30, 1, 134.81),
(199, 133, 13, 4, 140.73),
(200, 133, 59, 1, 1790.69),
(201, 133, 42, 1, 330.80),
(202, 134, 57, 1, 101.40),
(203, 134, 42, 1, 330.80),
(204, 135, 43, 3, 642.56),
(205, 136, 26, 1, 40.22),
(206, 137, 49, 1, 417.21),
(207, 137, 42, 1, 330.80),
(208, 138, 14, 1, 489.92),
(209, 139, 15, 1, 1724.26),
(210, 140, 1, 1, 134.64),
(211, 141, 56, 1, 361.99),
(212, 141, 9, 1, 265.61),
(213, 142, 6, 2, 194.90),
(214, 143, 21, 1, 287.41),
(215, 144, 25, 2, 151.07),
(216, 145, 9, 1, 265.61),
(217, 145, 44, 1, 220.65),
(218, 146, 1, 1, 134.64),
(219, 147, 23, 2, 75.44),
(220, 148, 10, 3, 399.75),
(221, 148, 40, 1, 137.08),
(222, 149, 6, 2, 194.90),
(223, 149, 9, 2, 265.61),
(224, 150, 25, 1, 151.07),
(225, 151, 51, 1, 339.67),
(226, 152, 6, 1, 194.90),
(227, 153, 47, 1, 397.90),
(228, 153, 50, 3, 12.00),
(229, 154, 55, 1, 573.73),
(230, 155, 34, 1, 51.74),
(231, 156, 26, 1, 40.22),
(232, 157, 58, 2, 82.31),
(233, 158, 25, 1, 151.07),
(234, 159, 39, 1, 216.02),
(235, 160, 1, 4, 134.64),
(236, 160, 60, 1, 945.18),
(237, 161, 54, 1, 492.13),
(238, 162, 44, 1, 220.65),
(239, 163, 50, 1, 12.00),
(240, 164, 1, 1, 134.64),
(241, 165, 4, 3, 344.21),
(242, 166, 19, 1, 205.25),
(243, 167, 27, 1, 72.41),
(244, 168, 41, 1, 188.50),
(245, 169, 18, 1, 119.23),
(246, 169, 6, 1, 194.90),
(247, 170, 52, 1, 405.22),
(248, 171, 38, 1, 447.99),
(249, 172, 44, 1, 220.65),
(250, 172, 20, 1, 692.84),
(251, 173, 55, 1, 573.73),
(252, 173, 16, 1, 107.79),
(253, 174, 30, 1, 134.81),
(254, 175, 43, 2, 642.56),
(255, 176, 8, 1, 433.66),
(256, 176, 9, 2, 265.61),
(257, 177, 23, 1, 75.44),
(258, 178, 47, 1, 397.90),
(259, 178, 24, 1, 1058.59),
(260, 179, 18, 2, 119.23),
(261, 179, 8, 2, 433.66),
(262, 180, 52, 1, 405.22),
(263, 181, 17, 2, 178.08),
(264, 182, 5, 1, 456.73),
(265, 183, 4, 1, 344.21),
(266, 184, 24, 1, 1058.59),
(267, 185, 58, 1, 82.31),
(268, 185, 47, 1, 397.90),
(269, 186, 1, 1, 134.64),
(270, 186, 56, 1, 361.99),
(271, 187, 24, 1, 1058.59),
(272, 188, 60, 3, 945.18),
(273, 189, 52, 3, 405.22),
(274, 190, 27, 1, 72.41),
(275, 190, 16, 1, 107.79),
(276, 191, 18, 2, 119.23),
(277, 191, 37, 1, 68.61),
(278, 192, 58, 1, 82.31),
(279, 193, 34, 4, 51.74),
(280, 194, 5, 2, 456.73),
(281, 194, 56, 1, 361.99),
(282, 194, 55, 1, 573.73),
(283, 195, 30, 1, 134.81),
(284, 196, 37, 2, 68.61),
(285, 197, 16, 1, 107.79),
(286, 197, 38, 4, 447.99),
(287, 198, 50, 1, 12.00),
(288, 198, 58, 1, 82.31),
(289, 198, 51, 1, 339.67),
(290, 199, 27, 1, 72.41),
(291, 200, 41, 2, 188.50),
(292, 201, 22, 1, 137.51),
(293, 201, 43, 1, 642.56),
(294, 202, 20, 1, 692.84),
(295, 202, 34, 4, 51.74),
(296, 203, 4, 4, 344.21),
(297, 204, 18, 1, 119.23),
(298, 205, 58, 2, 82.31),
(299, 205, 27, 2, 72.41),
(300, 205, 24, 1, 1058.59),
(301, 206, 38, 1, 447.99),
(302, 206, 9, 1, 265.61),
(303, 207, 38, 1, 447.99),
(304, 208, 9, 1, 265.61),
(305, 209, 21, 3, 287.41),
(306, 210, 54, 2, 492.13),
(307, 211, 18, 1, 119.23),
(308, 212, 9, 2, 265.61),
(309, 212, 38, 1, 447.99),
(310, 212, 7, 1, 278.47),
(311, 213, 27, 1, 72.41),
(312, 214, 50, 1, 12.00),
(313, 215, 17, 2, 178.08),
(314, 216, 52, 1, 405.22),
(315, 217, 45, 1, 39.87),
(316, 217, 14, 2, 489.92),
(317, 218, 6, 2, 194.90),
(318, 219, 26, 1, 40.22),
(319, 219, 44, 1, 220.65),
(320, 219, 53, 4, 17.08),
(321, 220, 26, 2, 40.22),
(322, 221, 36, 1, 410.63),
(323, 222, 52, 2, 405.22),
(324, 223, 4, 2, 344.21),
(325, 224, 9, 1, 265.61),
(326, 224, 26, 1, 40.22),
(327, 224, 41, 3, 188.50),
(328, 225, 38, 1, 447.99),
(329, 226, 2, 4, 651.10),
(330, 226, 13, 3, 140.73),
(331, 227, 9, 1, 265.61),
(332, 228, 52, 1, 405.22),
(333, 228, 3, 3, 1802.90),
(334, 229, 60, 1, 945.18),
(335, 230, 26, 1, 40.22),
(336, 230, 25, 1, 151.07),
(337, 231, 14, 3, 489.92),
(338, 232, 29, 2, 492.97),
(339, 233, 40, 1, 137.08),
(340, 234, 32, 1, 188.47),
(341, 234, 36, 1, 410.63),
(342, 235, 25, 1, 151.07),
(343, 236, 57, 2, 101.40),
(344, 237, 52, 1, 405.22),
(345, 238, 25, 2, 151.07),
(346, 239, 35, 2, 877.72),
(347, 240, 37, 1, 68.61),
(348, 241, 12, 1, 161.44),
(349, 242, 2, 2, 651.10),
(350, 243, 4, 2, 344.21),
(351, 243, 31, 1, 5.33),
(352, 244, 15, 4, 1724.26),
(353, 244, 7, 1, 278.47),
(354, 245, 35, 2, 877.72),
(355, 246, 4, 2, 344.21),
(356, 246, 15, 1, 1724.26),
(357, 246, 52, 1, 405.22),
(358, 247, 55, 1, 573.73),
(359, 247, 16, 1, 107.79),
(360, 247, 52, 2, 405.22),
(361, 248, 38, 1, 447.99),
(362, 249, 37, 1, 68.61),
(363, 249, 37, 3, 68.61),
(364, 250, 52, 2, 405.22),
(365, 250, 32, 1, 188.47),
(366, 251, 3, 1, 1802.90),
(367, 252, 15, 1, 1724.26),
(368, 253, 22, 3, 137.51),
(369, 254, 9, 1, 265.61),
(370, 255, 52, 2, 405.22),
(371, 256, 2, 1, 651.10),
(372, 257, 10, 2, 399.75),
(373, 257, 55, 1, 573.73),
(374, 258, 5, 1, 456.73),
(375, 259, 26, 1, 40.22),
(376, 259, 22, 1, 137.51),
(377, 259, 9, 4, 265.61),
(378, 260, 28, 2, 37.73),
(379, 260, 32, 1, 188.47),
(380, 261, 36, 1, 410.63),
(381, 262, 51, 1, 339.67),
(382, 262, 43, 1, 642.56),
(383, 262, 12, 1, 161.44),
(384, 263, 19, 1, 205.25),
(385, 263, 47, 1, 397.90),
(386, 264, 37, 1, 68.61),
(387, 264, 50, 3, 12.00),
(388, 265, 39, 1, 216.02),
(389, 266, 40, 1, 137.08),
(390, 266, 37, 1, 68.61),
(391, 267, 22, 2, 137.51),
(392, 268, 21, 1, 287.41),
(393, 269, 6, 2, 194.90),
(394, 269, 43, 1, 642.56),
(395, 270, 29, 1, 492.97),
(396, 270, 14, 1, 489.92),
(397, 271, 17, 2, 178.08),
(398, 272, 4, 1, 344.21),
(399, 272, 47, 1, 397.90),
(400, 273, 27, 1, 72.41),
(401, 274, 35, 1, 877.72),
(402, 275, 51, 2, 339.67),
(403, 275, 42, 2, 330.80),
(404, 276, 29, 1, 492.97),
(405, 277, 19, 1, 205.25),
(406, 277, 17, 3, 178.08),
(407, 278, 11, 2, 63.68),
(408, 279, 5, 1, 456.73),
(409, 280, 6, 1, 194.90),
(410, 280, 40, 2, 137.08),
(411, 281, 28, 3, 37.73),
(412, 281, 11, 1, 63.68),
(413, 282, 4, 1, 344.21),
(414, 283, 13, 1, 140.73),
(415, 284, 60, 2, 945.18),
(416, 285, 19, 1, 205.25),
(417, 286, 26, 1, 40.22),
(418, 287, 10, 1, 399.75),
(419, 287, 1, 1, 134.64),
(420, 288, 43, 1, 642.56),
(421, 289, 7, 1, 278.47),
(422, 290, 19, 4, 205.25),
(423, 291, 8, 1, 433.66),
(424, 292, 32, 2, 188.47),
(425, 293, 42, 1, 330.80),
(426, 294, 57, 1, 101.40),
(427, 295, 3, 1, 1802.90),
(428, 296, 15, 2, 1724.26),
(429, 297, 10, 2, 399.75),
(430, 298, 6, 1, 194.90),
(431, 298, 52, 1, 405.22),
(432, 299, 38, 1, 447.99),
(433, 299, 4, 2, 344.21),
(434, 299, 53, 1, 17.08),
(435, 300, 44, 2, 220.65),
(436, 300, 31, 1, 5.33),
(437, 300, 16, 1, 107.79),
(438, 301, 58, 2, 82.31),
(439, 302, 37, 3, 68.61),
(440, 303, 44, 4, 220.65),
(441, 303, 10, 1, 399.75),
(442, 304, 12, 3, 161.44),
(443, 304, 11, 4, 63.68),
(444, 305, 9, 1, 265.61),
(445, 305, 6, 4, 194.90),
(446, 306, 53, 1, 17.08),
(447, 307, 17, 1, 178.08),
(448, 307, 47, 3, 397.90),
(449, 308, 25, 1, 151.07),
(450, 309, 55, 1, 573.73),
(451, 310, 56, 1, 361.99),
(452, 311, 38, 1, 447.99),
(453, 311, 27, 1, 72.41),
(454, 312, 37, 1, 68.61),
(455, 313, 7, 3, 278.47),
(456, 313, 37, 2, 68.61),
(457, 314, 56, 1, 361.99),
(458, 314, 23, 2, 75.44),
(459, 315, 42, 1, 330.80),
(460, 316, 3, 1, 1802.90),
(461, 316, 26, 1, 40.22),
(462, 317, 45, 1, 39.87),
(463, 317, 26, 2, 40.22),
(464, 318, 16, 1, 107.79),
(465, 319, 18, 2, 119.23),
(466, 320, 53, 2, 17.08),
(467, 321, 54, 1, 492.13),
(468, 322, 7, 4, 278.47),
(469, 322, 15, 1, 1724.26),
(470, 323, 29, 2, 492.97),
(471, 323, 21, 1, 287.41),
(472, 323, 27, 1, 72.41),
(473, 324, 29, 1, 492.97),
(474, 325, 48, 1, 201.07),
(475, 325, 34, 2, 51.74),
(476, 326, 33, 2, 1141.21),
(477, 326, 5, 1, 456.73),
(478, 327, 9, 2, 265.61),
(479, 328, 37, 1, 68.61),
(480, 329, 54, 1, 492.13),
(481, 330, 3, 1, 1802.90),
(482, 331, 46, 1, 339.44),
(483, 331, 24, 2, 1058.59),
(484, 331, 33, 1, 1141.21),
(485, 332, 44, 1, 220.65),
(486, 332, 24, 1, 1058.59),
(487, 332, 29, 1, 492.97),
(488, 333, 38, 1, 447.99),
(489, 333, 23, 1, 75.44),
(490, 334, 48, 2, 201.07),
(491, 334, 6, 1, 194.90),
(492, 335, 11, 2, 63.68),
(493, 336, 14, 2, 489.92),
(494, 336, 42, 1, 330.80),
(495, 337, 42, 1, 330.80),
(496, 338, 50, 3, 12.00),
(497, 339, 31, 3, 5.33),
(498, 339, 42, 1, 330.80),
(499, 340, 15, 1, 1724.26),
(500, 340, 52, 3, 405.22),
(501, 341, 46, 1, 339.44),
(502, 341, 28, 2, 37.73),
(503, 342, 30, 1, 134.81),
(504, 342, 30, 1, 134.81),
(505, 343, 40, 1, 137.08),
(506, 344, 33, 4, 1141.21),
(507, 345, 54, 1, 492.13),
(508, 345, 42, 1, 330.80),
(509, 345, 19, 1, 205.25),
(510, 346, 5, 1, 456.73),
(511, 347, 21, 2, 287.41),
(512, 348, 46, 3, 339.44),
(513, 349, 13, 1, 140.73),
(514, 349, 49, 1, 417.21),
(515, 350, 55, 2, 573.73),
(516, 351, 43, 1, 642.56),
(517, 351, 9, 2, 265.61),
(518, 352, 19, 1, 205.25),
(519, 352, 27, 1, 72.41),
(520, 353, 38, 2, 447.99),
(521, 353, 37, 2, 68.61),
(522, 354, 46, 1, 339.44),
(523, 355, 51, 1, 339.67),
(524, 356, 23, 1, 75.44),
(525, 356, 55, 1, 573.73),
(526, 356, 43, 2, 642.56),
(527, 357, 7, 1, 278.47),
(528, 358, 47, 2, 397.90),
(529, 358, 49, 3, 417.21),
(530, 359, 58, 1, 82.31),
(531, 359, 6, 1, 194.90),
(532, 359, 15, 2, 1724.26),
(533, 360, 51, 2, 339.67),
(534, 361, 38, 1, 447.99),
(535, 362, 31, 1, 5.33),
(536, 362, 41, 1, 188.50),
(537, 363, 5, 1, 456.73),
(538, 363, 13, 1, 140.73),
(539, 363, 56, 1, 361.99),
(540, 364, 27, 1, 72.41),
(541, 365, 9, 4, 265.61),
(542, 365, 22, 1, 137.51),
(543, 366, 59, 4, 1790.69),
(544, 367, 56, 2, 361.99),
(545, 368, 32, 1, 188.47),
(546, 368, 12, 1, 161.44),
(547, 369, 29, 1, 492.97),
(548, 370, 11, 1, 63.68),
(549, 370, 11, 1, 63.68),
(550, 371, 6, 1, 194.90),
(551, 371, 28, 1, 37.73),
(552, 372, 31, 1, 5.33),
(553, 373, 13, 2, 140.73),
(554, 374, 58, 1, 82.31),
(555, 374, 54, 1, 492.13),
(556, 374, 2, 1, 651.10),
(557, 375, 16, 1, 107.79),
(558, 375, 57, 1, 101.40),
(559, 376, 25, 1, 151.07),
(560, 377, 5, 2, 456.73),
(561, 378, 19, 1, 205.25),
(562, 379, 34, 1, 51.74),
(563, 380, 9, 1, 265.61),
(564, 380, 58, 1, 82.31),
(565, 381, 11, 3, 63.68),
(566, 381, 59, 2, 1790.69),
(567, 382, 15, 2, 1724.26),
(568, 383, 47, 1, 397.90),
(569, 384, 8, 1, 433.66),
(570, 385, 3, 1, 1802.90),
(571, 385, 41, 1, 188.50),
(572, 386, 4, 1, 344.21),
(573, 387, 7, 1, 278.47),
(574, 388, 45, 1, 39.87),
(575, 389, 8, 1, 433.66),
(576, 390, 10, 1, 399.75),
(577, 391, 1, 1, 134.64),
(578, 391, 43, 1, 642.56),
(579, 392, 40, 1, 137.08),
(580, 393, 54, 2, 492.13),
(581, 394, 40, 1, 137.08),
(582, 395, 7, 1, 278.47),
(583, 396, 50, 1, 12.00),
(584, 396, 34, 4, 51.74),
(585, 397, 27, 1, 72.41),
(586, 398, 32, 3, 188.47),
(587, 399, 31, 1, 5.33),
(588, 399, 1, 1, 134.64),
(589, 400, 8, 2, 433.66),
(590, 401, 10, 3, 399.75),
(591, 401, 50, 1, 12.00),
(592, 402, 7, 3, 278.47),
(593, 402, 42, 1, 330.80),
(594, 403, 19, 1, 205.25),
(595, 403, 4, 1, 344.21),
(596, 403, 12, 2, 161.44),
(597, 404, 24, 2, 1058.59),
(598, 404, 21, 1, 287.41),
(599, 405, 55, 2, 573.73),
(600, 406, 55, 1, 573.73),
(601, 407, 22, 1, 137.51),
(602, 407, 29, 3, 492.97),
(603, 408, 47, 1, 397.90),
(604, 409, 12, 1, 161.44),
(605, 409, 26, 3, 40.22),
(606, 410, 25, 1, 151.07),
(607, 411, 27, 1, 72.41),
(608, 412, 8, 1, 433.66),
(609, 412, 47, 1, 397.90),
(610, 413, 11, 1, 63.68),
(611, 413, 59, 1, 1790.69),
(612, 413, 52, 1, 405.22),
(613, 414, 40, 1, 137.08),
(614, 415, 2, 2, 651.10),
(615, 416, 47, 4, 397.90),
(616, 416, 9, 1, 265.61),
(617, 417, 57, 1, 101.40),
(618, 418, 17, 1, 178.08),
(619, 419, 56, 1, 361.99),
(620, 420, 37, 2, 68.61),
(621, 420, 15, 4, 1724.26),
(622, 421, 22, 1, 137.51),
(623, 421, 45, 2, 39.87),
(624, 422, 43, 2, 642.56),
(625, 423, 43, 1, 642.56),
(626, 424, 54, 2, 492.13),
(627, 425, 40, 1, 137.08),
(628, 425, 42, 3, 330.80),
(629, 426, 31, 2, 5.33),
(630, 427, 5, 2, 456.73),
(631, 427, 21, 1, 287.41),
(632, 428, 4, 1, 344.21),
(633, 428, 36, 1, 410.63),
(634, 428, 26, 2, 40.22),
(635, 429, 29, 2, 492.97),
(636, 430, 55, 1, 573.73),
(637, 431, 32, 2, 188.47),
(638, 432, 26, 1, 40.22),
(639, 433, 1, 2, 134.64),
(640, 434, 40, 1, 137.08),
(641, 434, 57, 1, 101.40),
(642, 435, 43, 1, 642.56),
(643, 436, 53, 1, 17.08),
(644, 437, 30, 1, 134.81),
(645, 438, 39, 1, 216.02),
(646, 438, 43, 1, 642.56),
(647, 439, 7, 2, 278.47),
(648, 440, 22, 1, 137.51),
(649, 441, 52, 1, 405.22),
(650, 441, 34, 1, 51.74),
(651, 442, 58, 1, 82.31),
(652, 443, 46, 2, 339.44),
(653, 444, 17, 1, 178.08),
(654, 445, 60, 2, 945.18),
(655, 446, 53, 2, 17.08),
(656, 447, 7, 2, 278.47),
(657, 447, 3, 3, 1802.90),
(658, 448, 38, 1, 447.99),
(659, 448, 58, 1, 82.31),
(660, 449, 33, 1, 1141.21),
(661, 449, 32, 1, 188.47),
(662, 450, 36, 3, 410.63),
(663, 450, 54, 1, 492.13),
(664, 451, 50, 3, 12.00),
(665, 451, 12, 1, 161.44),
(666, 451, 12, 2, 161.44),
(667, 452, 25, 1, 151.07),
(668, 453, 21, 1, 287.41),
(669, 453, 25, 1, 151.07),
(670, 454, 45, 2, 39.87),
(671, 454, 18, 1, 119.23),
(672, 455, 19, 1, 205.25),
(673, 456, 27, 1, 72.41),
(674, 457, 33, 1, 1141.21),
(675, 457, 45, 1, 39.87),
(676, 458, 48, 3, 201.07),
(677, 459, 13, 1, 140.73),
(678, 459, 46, 1, 339.44),
(679, 460, 44, 1, 220.65),
(680, 461, 12, 1, 161.44),
(681, 461, 45, 1, 39.87),
(682, 462, 49, 1, 417.21),
(683, 462, 31, 1, 5.33),
(684, 463, 46, 1, 339.44),
(685, 463, 48, 2, 201.07),
(686, 463, 35, 1, 877.72),
(687, 464, 52, 1, 405.22),
(688, 464, 7, 1, 278.47),
(689, 465, 43, 1, 642.56),
(690, 466, 51, 1, 339.67),
(691, 467, 17, 1, 178.08),
(692, 468, 51, 1, 339.67),
(693, 469, 3, 1, 1802.90),
(694, 469, 29, 1, 492.97),
(695, 470, 48, 1, 201.07),
(696, 470, 15, 2, 1724.26),
(697, 471, 16, 1, 107.79),
(698, 472, 45, 1, 39.87),
(699, 472, 43, 1, 642.56),
(700, 473, 27, 3, 72.41),
(701, 474, 21, 3, 287.41),
(702, 474, 4, 1, 344.21),
(703, 474, 17, 1, 178.08),
(704, 475, 56, 2, 361.99),
(705, 475, 54, 1, 492.13),
(706, 476, 46, 1, 339.44),
(707, 476, 49, 1, 417.21),
(708, 477, 13, 2, 140.73),
(709, 477, 13, 1, 140.73),
(710, 478, 44, 1, 220.65),
(711, 479, 48, 1, 201.07),
(712, 479, 25, 1, 151.07),
(713, 479, 18, 1, 119.23),
(714, 480, 38, 2, 447.99),
(715, 481, 30, 2, 134.81),
(716, 482, 10, 3, 399.75),
(717, 483, 50, 3, 12.00),
(718, 484, 43, 1, 642.56),
(719, 484, 51, 1, 339.67),
(720, 485, 51, 2, 339.67),
(721, 486, 12, 1, 161.44),
(722, 487, 11, 1, 63.68),
(723, 487, 35, 1, 877.72),
(724, 488, 57, 1, 101.40),
(725, 489, 24, 1, 1058.59),
(726, 490, 40, 1, 137.08),
(727, 490, 36, 2, 410.63),
(728, 490, 42, 1, 330.80),
(729, 491, 29, 1, 492.97),
(730, 491, 42, 1, 330.80),
(731, 492, 3, 1, 1802.90),
(732, 492, 21, 1, 287.41),
(733, 493, 8, 1, 433.66),
(734, 493, 35, 2, 877.72),
(735, 494, 34, 2, 51.74),
(736, 495, 52, 1, 405.22),
(737, 496, 19, 2, 205.25),
(738, 497, 33, 1, 1141.21),
(739, 498, 50, 1, 12.00),
(740, 499, 5, 1, 456.73),
(741, 500, 14, 2, 489.92),
(742, 500, 28, 2, 37.73),
(743, 106, 35, 2, 877.72),
(744, 450, 48, 2, 201.07),
(745, 332, 53, 3, 17.08),
(746, 383, 44, 1, 220.65),
(747, 236, 46, 1, 339.44),
(748, 45, 5, 1, 456.73),
(749, 407, 17, 1, 178.08),
(750, 295, 53, 1, 17.08),
(751, 133, 27, 1, 72.41),
(752, 323, 26, 1, 40.22),
(753, 9, 25, 1, 151.07),
(754, 274, 1, 1, 134.64),
(755, 317, 5, 2, 456.73),
(756, 300, 3, 2, 1802.90),
(757, 38, 23, 3, 75.44),
(758, 55, 19, 2, 205.25),
(759, 155, 39, 1, 216.02),
(760, 392, 60, 1, 945.18),
(761, 203, 53, 1, 17.08),
(762, 243, 11, 1, 63.68),
(763, 70, 48, 1, 201.07),
(764, 409, 55, 1, 573.73),
(765, 492, 41, 1, 188.50),
(766, 347, 57, 3, 101.40),
(767, 408, 56, 2, 361.99),
(768, 192, 1, 1, 134.64),
(769, 285, 10, 1, 399.75),
(770, 3, 37, 1, 68.61),
(771, 276, 36, 3, 410.63),
(772, 157, 14, 2, 489.92),
(773, 463, 47, 1, 397.90),
(774, 212, 58, 1, 82.31),
(775, 263, 10, 1, 399.75),
(776, 114, 40, 2, 137.08),
(777, 100, 8, 1, 433.66),
(778, 410, 37, 2, 68.61),
(779, 436, 49, 3, 417.21),
(780, 282, 30, 1, 134.81),
(781, 38, 19, 1, 205.25),
(782, 129, 7, 1, 278.47),
(783, 298, 32, 3, 188.47),
(784, 183, 9, 1, 265.61),
(785, 121, 7, 1, 278.47),
(786, 36, 58, 1, 82.31),
(787, 249, 29, 1, 492.97),
(788, 338, 20, 1, 692.84),
(789, 79, 37, 1, 68.61),
(790, 414, 21, 3, 287.41),
(791, 87, 1, 1, 134.64),
(792, 403, 15, 2, 1724.26),
(793, 329, 28, 1, 37.73),
(794, 185, 9, 1, 265.61),
(795, 170, 57, 1, 101.40),
(796, 229, 23, 2, 75.44),
(797, 250, 36, 1, 410.63),
(798, 331, 39, 1, 216.02),
(799, 144, 55, 2, 573.73),
(800, 457, 35, 1, 877.72),
(801, 376, 57, 1, 101.40),
(802, 373, 5, 2, 456.73),
(803, 435, 33, 1, 1141.21),
(804, 417, 38, 1, 447.99),
(805, 394, 38, 1, 447.99),
(806, 19, 36, 1, 410.63),
(807, 458, 35, 1, 877.72),
(808, 397, 10, 1, 399.75),
(809, 115, 58, 2, 82.31),
(810, 376, 55, 1, 573.73),
(811, 238, 33, 1, 1141.21),
(812, 204, 24, 1, 1058.59),
(813, 340, 16, 2, 107.79),
(814, 413, 40, 1, 137.08),
(815, 388, 33, 1, 1141.21),
(816, 82, 12, 1, 161.44),
(817, 290, 43, 2, 642.56),
(818, 75, 48, 2, 201.07),
(819, 481, 23, 1, 75.44),
(820, 390, 32, 1, 188.47),
(821, 136, 24, 1, 1058.59),
(822, 343, 14, 1, 489.92),
(823, 406, 24, 1, 1058.59),
(824, 470, 30, 2, 134.81),
(825, 21, 42, 1, 330.80),
(826, 361, 34, 1, 51.74),
(827, 141, 54, 2, 492.13),
(828, 297, 35, 1, 877.72),
(829, 193, 42, 1, 330.80),
(830, 301, 42, 2, 330.80),
(831, 40, 34, 1, 51.74),
(832, 499, 59, 1, 1790.69),
(833, 208, 23, 2, 75.44),
(834, 177, 32, 2, 188.47),
(835, 455, 39, 1, 216.02),
(836, 452, 9, 1, 265.61),
(837, 118, 5, 1, 456.73),
(838, 144, 14, 1, 489.92),
(839, 81, 24, 1, 1058.59),
(840, 419, 8, 1, 433.66),
(841, 213, 52, 1, 405.22),
(842, 59, 31, 1, 5.33),
(843, 246, 14, 1, 489.92),
(844, 332, 54, 1, 492.13),
(845, 125, 3, 1, 1802.90),
(846, 304, 11, 1, 63.68),
(847, 263, 3, 2, 1802.90),
(848, 76, 4, 1, 344.21),
(849, 473, 12, 1, 161.44),
(850, 208, 39, 3, 216.02),
(851, 327, 2, 2, 651.10),
(852, 373, 43, 2, 642.56),
(853, 485, 6, 1, 194.90),
(854, 311, 31, 2, 5.33),
(855, 88, 15, 2, 1724.26),
(856, 308, 10, 2, 399.75),
(857, 421, 50, 1, 12.00),
(858, 338, 33, 1, 1141.21),
(859, 371, 44, 1, 220.65),
(860, 233, 39, 1, 216.02),
(861, 118, 25, 1, 151.07),
(862, 56, 2, 1, 651.10),
(863, 441, 59, 1, 1790.69),
(864, 215, 53, 1, 17.08),
(865, 50, 12, 1, 161.44),
(866, 315, 39, 1, 216.02),
(867, 402, 35, 1, 877.72),
(868, 61, 6, 1, 194.90),
(869, 67, 58, 1, 82.31),
(870, 424, 1, 2, 134.64),
(871, 397, 44, 1, 220.65),
(872, 268, 27, 1, 72.41),
(873, 23, 45, 1, 39.87),
(874, 118, 52, 1, 405.22),
(875, 394, 25, 1, 151.07),
(876, 412, 48, 3, 201.07),
(877, 429, 45, 1, 39.87),
(878, 218, 9, 1, 265.61),
(879, 393, 15, 3, 1724.26),
(880, 43, 19, 1, 205.25),
(881, 279, 27, 1, 72.41),
(882, 3, 46, 2, 339.44),
(883, 4, 37, 1, 68.61),
(884, 267, 1, 1, 134.64),
(885, 106, 45, 2, 39.87),
(886, 210, 24, 1, 1058.59),
(887, 219, 42, 1, 330.80),
(888, 134, 55, 1, 573.73),
(889, 290, 24, 1, 1058.59),
(890, 349, 26, 2, 40.22),
(891, 212, 36, 2, 410.63),
(892, 248, 12, 1, 161.44),
(893, 285, 31, 1, 5.33),
(894, 158, 37, 1, 68.61),
(895, 362, 26, 2, 40.22),
(896, 438, 56, 1, 361.99),
(897, 383, 15, 1, 1724.26),
(898, 359, 11, 1, 63.68),
(899, 261, 26, 2, 40.22),
(900, 411, 36, 1, 410.63);

CREATE TABLE IF NOT EXISTS shipments (
    shipment_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    shipped_date DATE,
    delivery_date DATE,
    shipping_status VARCHAR(30)
);

INSERT INTO shipments (shipment_id, order_id, shipped_date, delivery_date, shipping_status) VALUES
(1, 1, '2023-07-01', '2023-07-03', 'Delivered'),
(2, 2, NULL, NULL, 'Cancelled'),
(3, 3, '2024-04-13', '2024-04-14', 'Delivered'),
(4, 4, NULL, NULL, 'Cancelled'),
(5, 5, NULL, NULL, 'Pending'),
(6, 6, '2024-07-19', '2024-07-24', 'Delivered'),
(7, 7, '2024-04-06', '2024-04-09', 'Delivered'),
(8, 8, '2023-10-12', '2023-10-17', 'Delivered'),
(9, 9, '2023-09-06', '2023-09-10', 'Delivered'),
(10, 10, '2023-09-03', '2023-09-06', 'Delivered'),
(11, 11, '2023-03-29', '2023-03-30', 'In Transit'),
(12, 12, '2023-06-08', '2023-06-14', 'Delivered'),
(13, 13, '2023-12-06', '2023-12-08', 'Delivered'),
(14, 14, '2024-03-11', '2024-03-14', 'Delivered'),
(15, 15, '2023-01-26', '2023-01-31', 'Delivered'),
(16, 16, '2024-05-05', '2024-05-10', 'Delivered'),
(17, 17, NULL, NULL, 'Cancelled'),
(18, 18, '2024-07-06', '2024-07-09', 'Delivered'),
(19, 19, '2023-08-15', '2023-08-17', 'Delivered'),
(20, 20, '2023-02-02', '2023-02-06', 'Delivered'),
(21, 21, NULL, NULL, 'Cancelled'),
(22, 22, '2024-07-04', '2024-07-08', 'Delivered'),
(23, 23, '2024-11-14', '2024-11-15', 'Delivered'),
(24, 24, '2024-04-18', '2024-04-19', 'Delivered'),
(25, 25, '2023-08-10', '2023-08-15', 'Delivered'),
(26, 26, NULL, NULL, 'Pending'),
(27, 27, '2023-03-28', '2023-03-30', 'Delivered'),
(28, 28, '2023-12-27', '2023-12-31', 'In Transit'),
(29, 29, NULL, NULL, 'Cancelled'),
(30, 30, '2023-01-26', '2023-01-27', 'Delivered'),
(31, 31, NULL, NULL, 'Cancelled'),
(32, 32, '2023-09-24', '2023-09-29', 'Delivered'),
(33, 33, '2023-04-29', '2023-05-04', 'Delivered'),
(34, 34, NULL, NULL, 'Cancelled'),
(35, 35, '2024-11-25', '2024-11-30', 'In Transit'),
(36, 36, '2023-07-28', '2023-08-02', 'Delivered'),
(37, 37, '2023-09-10', '2023-09-14', 'Delivered'),
(38, 38, '2024-09-08', '2024-09-11', 'In Transit'),
(39, 39, '2023-02-16', '2023-02-22', 'Delivered'),
(40, 40, '2023-03-17', '2023-03-18', 'Delivered'),
(41, 41, NULL, NULL, 'Cancelled'),
(42, 42, '2024-04-18', '2024-04-19', 'Delivered'),
(43, 43, '2024-06-20', '2024-06-26', 'Delivered'),
(44, 44, NULL, NULL, 'Pending'),
(45, 45, '2023-10-05', '2023-10-09', 'In Transit'),
(46, 46, '2023-10-18', '2023-10-23', 'Delivered'),
(47, 47, '2024-08-09', '2024-08-11', 'Delivered'),
(48, 48, '2024-05-25', '2024-05-31', 'Delivered'),
(49, 49, '2024-01-02', '2024-01-03', 'Delivered'),
(50, 50, '2023-10-12', '2023-10-16', 'Delivered'),
(51, 51, '2023-03-31', '2023-04-05', 'Delivered'),
(52, 52, '2023-09-06', '2023-09-10', 'Delivered'),
(53, 53, '2024-04-05', '2024-04-11', 'Delivered'),
(54, 54, '2024-02-22', '2024-02-24', 'Delivered'),
(55, 55, '2024-01-15', '2024-01-20', 'Delivered'),
(56, 56, '2024-07-18', '2024-07-19', 'In Transit'),
(57, 57, '2023-11-14', '2023-11-19', 'Delivered'),
(58, 58, '2023-11-25', '2023-11-26', 'Delivered'),
(59, 59, '2024-12-10', '2024-12-15', 'Delivered'),
(60, 60, NULL, NULL, 'Cancelled'),
(61, 61, '2024-09-08', '2024-09-11', 'Delivered'),
(62, 62, '2023-11-05', '2023-11-08', 'Delivered'),
(63, 63, '2024-07-05', '2024-07-07', 'Delivered'),
(64, 64, NULL, NULL, 'Cancelled'),
(65, 65, '2024-05-21', '2024-05-25', 'In Transit'),
(66, 66, '2024-04-26', '2024-05-01', 'Delivered'),
(67, 67, '2023-09-18', '2023-09-22', 'In Transit'),
(68, 68, '2024-02-20', '2024-02-24', 'Delivered'),
(69, 69, NULL, NULL, 'Pending'),
(70, 70, '2023-03-30', '2023-03-31', 'Delivered'),
(71, 71, '2024-03-06', '2024-03-11', 'Delivered'),
(72, 72, NULL, NULL, 'Cancelled'),
(73, 73, '2024-08-28', '2024-09-02', 'Delivered'),
(74, 74, '2023-03-05', '2023-03-10', 'Delivered'),
(75, 75, '2023-08-04', '2023-08-08', 'In Transit'),
(76, 76, '2023-06-13', '2023-06-16', 'Delivered'),
(77, 77, '2023-01-07', '2023-01-09', 'Delivered'),
(78, 78, '2023-10-29', '2023-11-01', 'Delivered'),
(79, 79, '2024-04-12', '2024-04-16', 'Delivered'),
(80, 80, NULL, NULL, 'Pending'),
(81, 81, '2024-03-13', '2024-03-18', 'Delivered'),
(82, 82, '2023-10-01', '2023-10-07', 'Delivered'),
(83, 83, NULL, NULL, 'Pending'),
(84, 84, '2024-03-27', '2024-04-01', 'Delivered'),
(85, 85, '2024-02-21', '2024-02-23', 'Delivered'),
(86, 86, '2024-03-26', '2024-03-30', 'Delivered'),
(87, 87, '2023-11-29', '2023-12-03', 'Delivered'),
(88, 88, '2024-11-26', '2024-12-01', 'Delivered'),
(89, 89, '2024-11-23', '2024-11-26', 'Delivered'),
(90, 90, '2023-07-04', '2023-07-05', 'Delivered'),
(91, 91, '2023-07-07', '2023-07-08', 'Delivered'),
(92, 92, '2023-04-07', '2023-04-11', 'Delivered'),
(93, 93, '2024-11-18', '2024-11-22', 'Delivered'),
(94, 94, '2024-12-14', '2024-12-17', 'Delivered'),
(95, 95, '2024-07-22', '2024-07-25', 'Delivered'),
(96, 96, '2023-12-02', '2023-12-03', 'Delivered'),
(97, 97, '2023-01-07', '2023-01-09', 'Delivered'),
(98, 98, '2023-03-02', '2023-03-04', 'In Transit'),
(99, 99, '2024-05-28', '2024-05-31', 'Delivered'),
(100, 100, NULL, NULL, 'Cancelled'),
(101, 101, NULL, NULL, 'Cancelled'),
(102, 102, '2023-09-08', '2023-09-12', 'Delivered'),
(103, 103, '2024-07-23', '2024-07-24', 'Delivered'),
(104, 104, '2024-04-20', '2024-04-24', 'Delivered'),
(105, 105, '2024-05-27', '2024-05-29', 'Delivered'),
(106, 106, '2023-10-10', '2023-10-14', 'Delivered'),
(107, 107, '2023-09-12', '2023-09-16', 'Delivered'),
(108, 108, NULL, NULL, 'Pending'),
(109, 109, NULL, NULL, 'Pending'),
(110, 110, '2024-06-04', '2024-06-05', 'Delivered'),
(111, 111, '2023-11-04', '2023-11-07', 'Delivered'),
(112, 112, '2024-05-19', '2024-05-25', 'Delivered'),
(113, 113, '2023-12-24', '2023-12-27', 'Delivered'),
(114, 114, NULL, NULL, 'Pending'),
(115, 115, '2023-09-05', '2023-09-11', 'Delivered'),
(116, 116, '2024-02-29', '2024-03-04', 'Delivered'),
(117, 117, '2024-01-27', '2024-01-29', 'Delivered'),
(118, 118, '2023-06-08', '2023-06-14', 'Delivered'),
(119, 119, '2024-08-28', '2024-08-30', 'Delivered'),
(120, 120, '2023-04-14', '2023-04-15', 'Delivered'),
(121, 121, '2023-06-01', '2023-06-06', 'Delivered'),
(122, 122, NULL, NULL, 'Cancelled'),
(123, 123, '2024-10-04', '2024-10-09', 'Delivered'),
(124, 124, '2024-11-22', '2024-11-23', 'Delivered'),
(125, 125, '2024-10-05', '2024-10-06', 'Delivered'),
(126, 126, '2023-02-10', '2023-02-13', 'Delivered'),
(127, 127, '2023-10-25', '2023-10-29', 'Delivered'),
(128, 128, '2023-04-13', '2023-04-18', 'Delivered'),
(129, 129, '2024-03-31', '2024-04-01', 'Delivered'),
(130, 130, '2023-02-20', '2023-02-24', 'Delivered'),
(131, 131, '2024-01-24', '2024-01-27', 'Delivered'),
(132, 132, '2024-08-04', '2024-08-10', 'Delivered'),
(133, 133, '2023-03-27', '2023-04-01', 'Delivered'),
(134, 134, '2023-09-09', '2023-09-13', 'Delivered'),
(135, 135, '2024-04-22', '2024-04-25', 'In Transit'),
(136, 136, '2023-01-14', '2023-01-19', 'Delivered'),
(137, 137, '2024-11-25', '2024-11-29', 'Delivered'),
(138, 138, NULL, NULL, 'Cancelled'),
(139, 139, '2023-09-18', '2023-09-21', 'Delivered'),
(140, 140, '2024-05-10', '2024-05-11', 'Delivered'),
(141, 141, '2024-08-13', '2024-08-16', 'Delivered'),
(142, 142, '2024-11-10', '2024-11-11', 'Delivered'),
(143, 143, '2023-02-24', '2023-02-28', 'Delivered'),
(144, 144, '2023-08-28', '2023-08-31', 'Delivered'),
(145, 145, '2023-07-15', '2023-07-20', 'Delivered'),
(146, 146, '2024-11-10', '2024-11-15', 'Delivered'),
(147, 147, '2024-10-06', '2024-10-08', 'Delivered'),
(148, 148, '2023-02-08', '2023-02-12', 'Delivered'),
(149, 149, '2023-10-31', '2023-11-04', 'Delivered'),
(150, 150, NULL, NULL, 'Pending'),
(151, 151, '2024-07-02', '2024-07-07', 'Delivered'),
(152, 152, NULL, NULL, 'Cancelled'),
(153, 153, '2023-12-16', '2023-12-19', 'Delivered'),
(154, 154, '2023-05-30', '2023-06-02', 'Delivered'),
(155, 155, NULL, NULL, 'Cancelled'),
(156, 156, '2024-01-11', '2024-01-13', 'Delivered'),
(157, 157, '2024-07-04', '2024-07-10', 'Delivered'),
(158, 158, '2024-11-23', '2024-11-26', 'Delivered'),
(159, 159, '2024-01-20', '2024-01-22', 'Delivered'),
(160, 160, '2024-09-28', '2024-09-29', 'In Transit'),
(161, 161, '2023-08-16', '2023-08-18', 'In Transit'),
(162, 162, '2023-11-09', '2023-11-12', 'Delivered'),
(163, 163, '2023-02-12', '2023-02-18', 'Delivered'),
(164, 164, '2023-08-30', '2023-09-01', 'Delivered'),
(165, 165, '2024-01-17', '2024-01-20', 'Delivered'),
(166, 166, '2024-03-09', '2024-03-12', 'Delivered'),
(167, 167, '2024-11-02', '2024-11-05', 'Delivered'),
(168, 168, '2023-10-16', '2023-10-17', 'Delivered'),
(169, 169, NULL, NULL, 'Pending'),
(170, 170, NULL, NULL, 'Cancelled'),
(171, 171, '2024-01-07', '2024-01-08', 'Delivered'),
(172, 172, '2024-04-12', '2024-04-14', 'Delivered'),
(173, 173, '2024-09-06', '2024-09-10', 'Delivered'),
(174, 174, '2023-09-08', '2023-09-14', 'Delivered'),
(175, 175, '2023-03-16', '2023-03-18', 'Delivered'),
(176, 176, '2023-08-11', '2023-08-13', 'Delivered'),
(177, 177, '2023-06-02', '2023-06-07', 'Delivered'),
(178, 178, '2023-05-31', '2023-06-04', 'Delivered'),
(179, 179, '2023-04-26', '2023-04-29', 'Delivered'),
(180, 180, '2024-01-03', '2024-01-09', 'In Transit'),
(181, 181, '2023-01-22', '2023-01-23', 'Delivered'),
(182, 182, '2024-03-10', '2024-03-12', 'Delivered'),
(183, 183, '2024-04-05', '2024-04-11', 'Delivered'),
(184, 184, NULL, NULL, 'Cancelled'),
(185, 185, '2024-11-06', '2024-11-08', 'Delivered'),
(186, 186, NULL, NULL, 'Pending'),
(187, 187, '2024-12-06', '2024-12-07', 'Delivered'),
(188, 188, '2023-03-20', '2023-03-25', 'Delivered'),
(189, 189, '2023-03-11', '2023-03-12', 'In Transit'),
(190, 190, '2024-07-20', '2024-07-26', 'Delivered'),
(191, 191, '2024-07-02', '2024-07-04', 'Delivered'),
(192, 192, '2023-04-13', '2023-04-15', 'Delivered'),
(193, 193, '2024-10-29', '2024-11-04', 'Delivered'),
(194, 194, '2024-03-17', '2024-03-18', 'Delivered'),
(195, 195, '2024-04-11', '2024-04-17', 'Delivered'),
(196, 196, '2024-03-14', '2024-03-16', 'Delivered'),
(197, 197, '2024-12-07', '2024-12-12', 'Delivered'),
(198, 198, '2023-04-09', '2023-04-13', 'Delivered'),
(199, 199, '2023-05-15', '2023-05-21', 'Delivered'),
(200, 200, '2024-07-31', '2024-08-03', 'Delivered'),
(201, 201, '2024-11-16', '2024-11-22', 'Delivered'),
(202, 202, '2023-02-25', '2023-03-02', 'Delivered'),
(203, 203, '2023-04-19', '2023-04-24', 'Delivered'),
(204, 204, '2024-05-11', '2024-05-14', 'Delivered'),
(205, 205, '2024-01-15', '2024-01-20', 'In Transit'),
(206, 206, NULL, NULL, 'Cancelled'),
(207, 207, '2024-09-25', '2024-09-27', 'Delivered'),
(208, 208, '2024-11-06', '2024-11-10', 'Delivered'),
(209, 209, '2023-10-10', '2023-10-15', 'Delivered'),
(210, 210, NULL, NULL, 'Pending'),
(211, 211, '2024-11-05', '2024-11-11', 'Delivered'),
(212, 212, '2023-02-03', '2023-02-04', 'Delivered'),
(213, 213, '2024-03-08', '2024-03-13', 'Delivered'),
(214, 214, '2023-11-30', '2023-12-06', 'In Transit'),
(215, 215, '2023-02-27', '2023-03-01', 'Delivered'),
(216, 216, '2024-11-25', '2024-11-30', 'Delivered'),
(217, 217, '2024-05-15', '2024-05-18', 'Delivered'),
(218, 218, '2024-06-11', '2024-06-12', 'Delivered'),
(219, 219, '2024-11-26', '2024-11-27', 'Delivered'),
(220, 220, '2023-11-14', '2023-11-16', 'Delivered'),
(221, 221, '2023-02-28', '2023-03-01', 'Delivered'),
(222, 222, '2023-05-22', '2023-05-23', 'Delivered'),
(223, 223, '2023-01-12', '2023-01-18', 'Delivered'),
(224, 224, '2024-01-30', '2024-02-05', 'Delivered'),
(225, 225, '2024-11-16', '2024-11-19', 'Delivered'),
(226, 226, '2023-02-14', '2023-02-15', 'In Transit'),
(227, 227, '2023-11-19', '2023-11-25', 'Delivered'),
(228, 228, '2024-10-18', '2024-10-22', 'Delivered'),
(229, 229, NULL, NULL, 'Cancelled'),
(230, 230, '2024-12-08', '2024-12-11', 'Delivered'),
(231, 231, '2023-09-11', '2023-09-14', 'Delivered'),
(232, 232, '2024-02-11', '2024-02-16', 'Delivered'),
(233, 233, '2023-12-09', '2023-12-15', 'Delivered'),
(234, 234, '2023-04-30', '2023-05-01', 'In Transit'),
(235, 235, NULL, NULL, 'Cancelled'),
(236, 236, '2023-06-06', '2023-06-07', 'Delivered'),
(237, 237, '2023-06-29', '2023-07-04', 'Delivered'),
(238, 238, '2023-03-21', '2023-03-26', 'Delivered'),
(239, 239, '2024-04-25', '2024-05-01', 'In Transit'),
(240, 240, '2024-12-03', '2024-12-09', 'Delivered'),
(241, 241, NULL, NULL, 'Cancelled'),
(242, 242, '2023-06-05', '2023-06-11', 'Delivered'),
(243, 243, '2023-11-11', '2023-11-17', 'Delivered'),
(244, 244, '2024-06-04', '2024-06-06', 'Delivered'),
(245, 245, '2023-03-05', '2023-03-09', 'Delivered'),
(246, 246, '2023-04-05', '2023-04-10', 'In Transit'),
(247, 247, '2024-08-21', '2024-08-24', 'In Transit'),
(248, 248, '2024-04-10', '2024-04-13', 'Delivered'),
(249, 249, '2023-11-30', '2023-12-06', 'Delivered'),
(250, 250, NULL, NULL, 'Pending'),
(251, 251, '2023-03-31', '2023-04-05', 'Delivered'),
(252, 252, '2024-03-29', '2024-03-31', 'Delivered'),
(253, 253, NULL, NULL, 'Cancelled'),
(254, 254, '2024-02-28', '2024-03-05', 'Delivered'),
(255, 255, '2024-10-12', '2024-10-16', 'In Transit'),
(256, 256, '2024-07-26', '2024-08-01', 'Delivered'),
(257, 257, '2024-11-06', '2024-11-11', 'Delivered'),
(258, 258, '2023-12-10', '2023-12-13', 'Delivered'),
(259, 259, '2023-11-16', '2023-11-18', 'Delivered'),
(260, 260, NULL, NULL, 'Cancelled'),
(261, 261, '2024-07-27', '2024-08-02', 'Delivered'),
(262, 262, NULL, NULL, 'Cancelled'),
(263, 263, '2024-06-28', '2024-07-03', 'Delivered'),
(264, 264, '2024-01-11', '2024-01-13', 'Delivered'),
(265, 265, '2023-12-20', '2023-12-23', 'Delivered'),
(266, 266, '2023-05-24', '2023-05-27', 'Delivered'),
(267, 267, NULL, NULL, 'Pending'),
(268, 268, NULL, NULL, 'Pending'),
(269, 269, '2023-05-17', '2023-05-19', 'Delivered'),
(270, 270, NULL, NULL, 'Pending'),
(271, 271, '2024-03-27', '2024-03-28', 'Delivered'),
(272, 272, '2023-09-06', '2023-09-08', 'Delivered'),
(273, 273, '2024-04-07', '2024-04-11', 'Delivered'),
(274, 274, NULL, NULL, 'Cancelled'),
(275, 275, '2024-04-22', '2024-04-23', 'Delivered'),
(276, 276, '2024-06-27', '2024-06-28', 'Delivered'),
(277, 277, '2024-09-16', '2024-09-20', 'Delivered'),
(278, 278, '2024-05-08', '2024-05-11', 'Delivered'),
(279, 279, '2024-06-16', '2024-06-20', 'In Transit'),
(280, 280, NULL, NULL, 'Cancelled'),
(281, 281, NULL, NULL, 'Cancelled'),
(282, 282, '2023-12-25', '2023-12-27', 'Delivered'),
(283, 283, '2024-06-03', '2024-06-04', 'Delivered'),
(284, 284, '2024-01-23', '2024-01-24', 'Delivered'),
(285, 285, '2024-10-28', '2024-10-31', 'Delivered'),
(286, 286, '2023-10-23', '2023-10-26', 'Delivered'),
(287, 287, '2024-04-27', '2024-04-29', 'Delivered'),
(288, 288, NULL, NULL, 'Pending'),
(289, 289, '2024-09-19', '2024-09-23', 'Delivered'),
(290, 290, '2023-09-06', '2023-09-11', 'Delivered'),
(291, 291, '2024-10-20', '2024-10-23', 'Delivered'),
(292, 292, '2024-05-28', '2024-05-30', 'Delivered'),
(293, 293, '2024-08-15', '2024-08-20', 'Delivered'),
(294, 294, '2023-01-07', '2023-01-11', 'Delivered'),
(295, 295, '2023-07-15', '2023-07-20', 'Delivered'),
(296, 296, '2023-03-13', '2023-03-15', 'Delivered'),
(297, 297, NULL, NULL, 'Pending'),
(298, 298, '2024-10-14', '2024-10-18', 'Delivered'),
(299, 299, '2023-01-22', '2023-01-24', 'Delivered'),
(300, 300, '2024-11-08', '2024-11-10', 'Delivered'),
(301, 301, '2023-12-10', '2023-12-14', 'Delivered'),
(302, 302, '2024-10-25', '2024-10-26', 'Delivered'),
(303, 303, '2024-12-17', '2024-12-21', 'Delivered'),
(304, 304, NULL, NULL, 'Cancelled'),
(305, 305, '2023-10-30', '2023-11-02', 'Delivered'),
(306, 306, '2023-11-21', '2023-11-24', 'Delivered'),
(307, 307, '2024-05-02', '2024-05-07', 'Delivered'),
(308, 308, '2023-10-24', '2023-10-29', 'Delivered'),
(309, 309, '2023-12-07', '2023-12-09', 'Delivered'),
(310, 310, NULL, NULL, 'Pending'),
(311, 311, '2023-12-17', '2023-12-19', 'Delivered'),
(312, 312, '2024-01-13', '2024-01-14', 'Delivered'),
(313, 313, '2024-03-12', '2024-03-17', 'In Transit'),
(314, 314, '2024-07-15', '2024-07-16', 'Delivered'),
(315, 315, '2024-11-08', '2024-11-11', 'Delivered'),
(316, 316, '2024-03-13', '2024-03-16', 'Delivered'),
(317, 317, NULL, NULL, 'Cancelled'),
(318, 318, NULL, NULL, 'Cancelled'),
(319, 319, '2023-03-23', '2023-03-25', 'Delivered'),
(320, 320, '2024-12-01', '2024-12-04', 'Delivered'),
(321, 321, '2024-11-30', '2024-12-06', 'In Transit'),
(322, 322, '2023-08-31', '2023-09-04', 'Delivered'),
(323, 323, '2024-08-08', '2024-08-09', 'Delivered'),
(324, 324, '2024-01-16', '2024-01-19', 'Delivered'),
(325, 325, '2023-05-26', '2023-05-29', 'Delivered'),
(326, 326, '2023-10-14', '2023-10-15', 'Delivered'),
(327, 327, '2023-07-13', '2023-07-19', 'Delivered'),
(328, 328, '2023-05-04', '2023-05-05', 'Delivered'),
(329, 329, '2023-08-12', '2023-08-14', 'In Transit'),
(330, 330, NULL, NULL, 'Pending'),
(331, 331, '2023-07-01', '2023-07-07', 'Delivered'),
(332, 332, NULL, NULL, 'Cancelled'),
(333, 333, '2023-12-25', '2023-12-29', 'Delivered'),
(334, 334, '2023-11-09', '2023-11-10', 'Delivered'),
(335, 335, '2024-10-20', '2024-10-24', 'Delivered'),
(336, 336, '2023-05-06', '2023-05-07', 'Delivered'),
(337, 337, '2024-05-25', '2024-05-28', 'Delivered'),
(338, 338, '2024-04-27', '2024-05-03', 'Delivered'),
(339, 339, '2023-04-02', '2023-04-08', 'Delivered'),
(340, 340, '2024-05-08', '2024-05-10', 'In Transit'),
(341, 341, '2023-03-22', '2023-03-25', 'Delivered'),
(342, 342, '2024-04-08', '2024-04-12', 'Delivered'),
(343, 343, '2024-07-19', '2024-07-24', 'In Transit'),
(344, 344, NULL, NULL, 'Pending'),
(345, 345, '2024-06-16', '2024-06-18', 'Delivered'),
(346, 346, NULL, NULL, 'Cancelled'),
(347, 347, '2023-03-26', '2023-04-01', 'Delivered'),
(348, 348, '2023-10-13', '2023-10-18', 'In Transit'),
(349, 349, '2023-04-11', '2023-04-17', 'Delivered'),
(350, 350, '2023-06-11', '2023-06-13', 'Delivered'),
(351, 351, '2023-12-16', '2023-12-19', 'In Transit'),
(352, 352, '2023-03-28', '2023-04-01', 'Delivered'),
(353, 353, '2023-10-01', '2023-10-07', 'Delivered'),
(354, 354, '2024-09-29', '2024-10-05', 'Delivered'),
(355, 355, NULL, NULL, 'Cancelled'),
(356, 356, '2023-09-10', '2023-09-13', 'Delivered'),
(357, 357, '2024-04-14', '2024-04-16', 'Delivered'),
(358, 358, '2024-03-03', '2024-03-09', 'In Transit'),
(359, 359, '2023-05-30', '2023-06-02', 'Delivered'),
(360, 360, '2023-12-25', '2023-12-31', 'Delivered'),
(361, 361, '2024-06-14', '2024-06-16', 'Delivered'),
(362, 362, '2023-05-09', '2023-05-13', 'In Transit'),
(363, 363, '2023-02-24', '2023-02-28', 'Delivered'),
(364, 364, NULL, NULL, 'Pending'),
(365, 365, '2023-12-05', '2023-12-07', 'Delivered'),
(366, 366, '2023-06-14', '2023-06-16', 'Delivered'),
(367, 367, '2023-11-17', '2023-11-22', 'Delivered'),
(368, 368, '2024-06-06', '2024-06-11', 'Delivered'),
(369, 369, '2023-12-30', '2024-01-01', 'Delivered'),
(370, 370, '2024-11-03', '2024-11-04', 'Delivered'),
(371, 371, NULL, NULL, 'Pending'),
(372, 372, '2024-01-14', '2024-01-16', 'Delivered'),
(373, 373, '2023-02-27', '2023-03-03', 'Delivered'),
(374, 374, '2023-10-26', '2023-10-28', 'Delivered'),
(375, 375, NULL, NULL, 'Cancelled'),
(376, 376, NULL, NULL, 'Cancelled'),
(377, 377, '2024-01-22', '2024-01-26', 'Delivered'),
(378, 378, '2023-05-30', '2023-06-01', 'Delivered'),
(379, 379, '2023-02-12', '2023-02-15', 'In Transit'),
(380, 380, '2024-05-02', '2024-05-08', 'Delivered'),
(381, 381, '2023-05-26', '2023-05-28', 'Delivered'),
(382, 382, '2024-02-11', '2024-02-16', 'Delivered'),
(383, 383, NULL, NULL, 'Pending'),
(384, 384, '2024-05-19', '2024-05-23', 'Delivered'),
(385, 385, '2024-01-17', '2024-01-21', 'Delivered'),
(386, 386, NULL, NULL, 'Pending'),
(387, 387, '2024-10-11', '2024-10-17', 'Delivered'),
(388, 388, '2024-08-18', '2024-08-22', 'Delivered'),
(389, 389, '2024-05-11', '2024-05-16', 'Delivered'),
(390, 390, '2024-01-26', '2024-01-31', 'Delivered'),
(391, 391, '2024-08-13', '2024-08-14', 'Delivered'),
(392, 392, '2024-03-29', '2024-04-03', 'Delivered'),
(393, 393, '2023-07-29', '2023-08-03', 'Delivered'),
(394, 394, '2023-03-06', '2023-03-08', 'Delivered'),
(395, 395, '2023-12-03', '2023-12-06', 'Delivered'),
(396, 396, '2023-11-21', '2023-11-25', 'Delivered'),
(397, 397, '2023-12-20', '2023-12-25', 'In Transit'),
(398, 398, '2024-12-03', '2024-12-05', 'Delivered'),
(399, 399, '2024-05-14', '2024-05-15', 'Delivered'),
(400, 400, NULL, NULL, 'Cancelled'),
(401, 401, '2023-10-24', '2023-10-26', 'Delivered'),
(402, 402, '2023-11-26', '2023-11-28', 'Delivered'),
(403, 403, '2023-10-11', '2023-10-15', 'Delivered'),
(404, 404, '2024-01-28', '2024-02-02', 'Delivered'),
(405, 405, '2023-06-01', '2023-06-05', 'Delivered'),
(406, 406, '2023-03-25', '2023-03-31', 'Delivered'),
(407, 407, NULL, NULL, 'Pending'),
(408, 408, '2024-07-31', '2024-08-06', 'Delivered'),
(409, 409, '2024-08-24', '2024-08-25', 'Delivered'),
(410, 410, '2023-08-23', '2023-08-24', 'Delivered'),
(411, 411, '2023-12-09', '2023-12-15', 'Delivered'),
(412, 412, '2023-05-26', '2023-05-31', 'In Transit'),
(413, 413, NULL, NULL, 'Pending'),
(414, 414, '2024-05-07', '2024-05-12', 'Delivered'),
(415, 415, '2023-11-27', '2023-11-30', 'Delivered'),
(416, 416, '2023-04-04', '2023-04-06', 'Delivered'),
(417, 417, '2023-02-10', '2023-02-16', 'Delivered'),
(418, 418, '2023-02-10', '2023-02-13', 'Delivered'),
(419, 419, NULL, NULL, 'Cancelled'),
(420, 420, '2023-02-12', '2023-02-15', 'Delivered'),
(421, 421, NULL, NULL, 'Cancelled'),
(422, 422, NULL, NULL, 'Cancelled'),
(423, 423, NULL, NULL, 'Pending'),
(424, 424, '2023-06-17', '2023-06-19', 'In Transit'),
(425, 425, '2023-07-11', '2023-07-16', 'Delivered'),
(426, 426, '2024-08-05', '2024-08-09', 'Delivered'),
(427, 427, NULL, NULL, 'Pending'),
(428, 428, '2023-12-06', '2023-12-11', 'Delivered'),
(429, 429, NULL, NULL, 'Cancelled'),
(430, 430, '2023-09-30', '2023-10-04', 'Delivered'),
(431, 431, '2023-12-09', '2023-12-15', 'Delivered'),
(432, 432, '2023-09-29', '2023-10-03', 'Delivered'),
(433, 433, '2024-11-19', '2024-11-20', 'Delivered'),
(434, 434, NULL, NULL, 'Pending'),
(435, 435, '2023-11-20', '2023-11-23', 'Delivered'),
(436, 436, '2024-01-17', '2024-01-19', 'Delivered'),
(437, 437, '2024-05-06', '2024-05-07', 'Delivered'),
(438, 438, '2024-01-19', '2024-01-21', 'Delivered'),
(439, 439, NULL, NULL, 'Pending'),
(440, 440, '2023-09-16', '2023-09-21', 'Delivered'),
(441, 441, '2024-06-23', '2024-06-24', 'Delivered'),
(442, 442, NULL, NULL, 'Pending'),
(443, 443, '2023-07-29', '2023-07-31', 'Delivered'),
(444, 444, '2024-06-21', '2024-06-27', 'Delivered'),
(445, 445, NULL, NULL, 'Pending'),
(446, 446, '2023-03-03', '2023-03-08', 'Delivered'),
(447, 447, '2024-08-02', '2024-08-06', 'Delivered'),
(448, 448, NULL, NULL, 'Pending'),
(449, 449, '2023-08-15', '2023-08-16', 'Delivered'),
(450, 450, '2023-03-10', '2023-03-13', 'Delivered'),
(451, 451, '2024-05-02', '2024-05-03', 'Delivered'),
(452, 452, NULL, NULL, 'Cancelled'),
(453, 453, NULL, NULL, 'Pending'),
(454, 454, '2024-01-27', '2024-01-28', 'Delivered'),
(455, 455, NULL, NULL, 'Pending'),
(456, 456, '2023-07-04', '2023-07-05', 'Delivered'),
(457, 457, '2023-08-20', '2023-08-23', 'Delivered'),
(458, 458, '2024-04-24', '2024-04-26', 'Delivered'),
(459, 459, '2024-01-29', '2024-01-30', 'Delivered'),
(460, 460, NULL, NULL, 'Cancelled'),
(461, 461, '2023-05-01', '2023-05-02', 'Delivered'),
(462, 462, '2023-01-22', '2023-01-28', 'Delivered'),
(463, 463, '2023-02-09', '2023-02-12', 'Delivered'),
(464, 464, '2023-09-13', '2023-09-18', 'Delivered'),
(465, 465, NULL, NULL, 'Pending'),
(466, 466, '2023-05-26', '2023-05-31', 'Delivered'),
(467, 467, '2024-08-17', '2024-08-23', 'Delivered'),
(468, 468, NULL, NULL, 'Pending'),
(469, 469, '2024-06-21', '2024-06-23', 'Delivered'),
(470, 470, NULL, NULL, 'Pending'),
(471, 471, '2024-10-05', '2024-10-11', 'Delivered'),
(472, 472, '2023-12-21', '2023-12-22', 'Delivered'),
(473, 473, '2023-11-27', '2023-12-03', 'Delivered'),
(474, 474, '2024-01-23', '2024-01-28', 'In Transit'),
(475, 475, '2023-08-23', '2023-08-24', 'Delivered'),
(476, 476, NULL, NULL, 'Cancelled'),
(477, 477, '2024-07-01', '2024-07-07', 'Delivered'),
(478, 478, NULL, NULL, 'Cancelled'),
(479, 479, NULL, NULL, 'Pending'),
(480, 480, '2023-10-04', '2023-10-10', 'Delivered'),
(481, 481, '2023-03-17', '2023-03-20', 'Delivered'),
(482, 482, '2024-11-23', '2024-11-26', 'Delivered'),
(483, 483, '2023-11-08', '2023-11-14', 'Delivered'),
(484, 484, '2023-05-05', '2023-05-11', 'Delivered'),
(485, 485, '2024-12-14', '2024-12-16', 'Delivered'),
(486, 486, '2024-07-22', '2024-07-28', 'Delivered'),
(487, 487, '2024-07-04', '2024-07-05', 'Delivered'),
(488, 488, '2024-06-13', '2024-06-15', 'Delivered'),
(489, 489, '2024-04-30', '2024-05-03', 'Delivered'),
(490, 490, '2024-01-19', '2024-01-25', 'Delivered'),
(491, 491, '2023-06-04', '2023-06-07', 'Delivered'),
(492, 492, '2024-08-19', '2024-08-24', 'Delivered'),
(493, 493, '2023-12-06', '2023-12-11', 'Delivered'),
(494, 494, NULL, NULL, 'Cancelled'),
(495, 495, '2023-09-24', '2023-09-25', 'In Transit'),
(496, 496, '2024-10-22', '2024-10-23', 'Delivered'),
(497, 497, '2023-12-31', '2024-01-06', 'Delivered'),
(498, 498, '2023-07-10', '2023-07-15', 'Delivered'),
(499, 499, NULL, NULL, 'Pending'),
(500, 500, '2024-11-17', '2024-11-22', 'Delivered');


--Get all customers from the North region.

SELECT *

FROM CUSTOMERS 
WHERE REGION = 'North'

--List all products costing more than 300.
SELECT *

FROM PRODUCTS 
WHERE UNIT_PRICE > 300

--Find all orders placed in February 2024.


SELECT *

FROM ORDERS 
WHERE EXTRACT(YEAR FROM ORDER_DATE) = 2024 AND EXTRACT(MONTH FROM ORDER_DATE) = 2



--Get all customers whose names start with 'A'.
SELECT *

FROM CUSTOMERS 
WHERE CUSTOMER_NAME LIKE 'A%'


--List products ordered by highest unit price.
SELECT P.PRODUCT_ID,
	   P.UNIT_PRICE 

FROM PRODUCTS P
ORDER BY P.UNIT_PRICE DESC


--Count number of customers per region.

SELECT  C.REGION,
	    COUNT(C.CUSTOMER_ID) AS TOTAL_CUSTOMERS 

FROM CUSTOMERS C
GROUP BY C.REGION

--Calculate total revenue per category.

SELECT P.CATEGORY,
	   SUM(OI.QUANTITY * P.UNIT_PRICE) AS TOTAL_REVENUE


FROM PRODUCTS P
JOIN ORDER_ITEMS OI
ON P.PRODUCT_ID = OI.PRODUCT_ID
GROUP BY P.CATEGORY



--Find the average order quantity per product.

SELECT P.PRODUCT_ID,
	   AVG(OI.QUANTITY) AS AVERAGE_ORDER_QUANTITY


FROM PRODUCTS P
JOIN ORDER_ITEMS OI
ON P.PRODUCT_ID = OI.PRODUCT_ID
GROUP BY P.PRODUCT_ID



--Get total orders placed each month.


SELECT DATE_TRUNC('MONTH',O.ORDER_DATE) AS MONTH,
	   COUNT(O.ORDER_ID)

FROM ORDERS O

GROUP BY DATE_TRUNC('MONTH',O.ORDER_DATE)



--Count how many customers joined each quarter.


SELECT EXTRACT(QUARTER FROM O.ORDER_DATE) AS QUARTER,
	   COUNT(C.CUSTOMER_ID)


FROM ORDERS O
JOIN CUSTOMERS C
ON O.CUSTOMER_ID = C.CUSTOMER_ID

GROUP BY EXTRACT(QUARTER FROM O.ORDER_DATE)

ORDER BY QUARTER



--List all orders with customer names.

SELECT C.CUSTOMER_NAME,
	   O.ORDER_ID

FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID


--Show orders with product names and quantities.

SELECT OI.ORDER_ID,
	   P.PRODUCT_NAME,
	   OI.QUANTITY


FROM ORDER_ITEMS OI
JOIN PRODUCTS P
ON OI.PRODUCT_ID = P.PRODUCT_ID


--Find orders with no shipment yet.

SELECT O.ORDER_ID


FROM ORDERS O
LEFT JOIN SHIPMENTS S
ON O.ORDER_ID = S.ORDER_ID

WHERE S.ORDER_ID IS NULL;


--Get all products ordered by customers from the East.


SELECT P.PRODUCT_NAME,
	   C.REGION

FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID
JOIN PRODUCTS P
ON OI.PRODUCT_ID = P.PRODUCT_ID

WHERE C.REGION = 'East'


--Find which customers ordered electronics.


SELECT C.CUSTOMER_NAME,
	   P.CATEGORY

FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID
JOIN PRODUCTS P
ON OI.PRODUCT_ID = P.PRODUCT_ID

WHERE P.CATEGORY = 'Electronics'


--Find orders placed on weekends.

SELECT O.ORDER_ID,
       O.ORDER_DATE AS WEEKEND_DAYS

FROM ORDERS O

WHERE EXTRACT(DAY FROM O.ORDER_DATE) IN (6,7)



--Extract month and year from order_date.

SELECT EXTRACT(YEAR FROM O.ORDER_DATE) AS YEAR,
	   EXTRACT(MONTH FROM O.ORDER_DATE) AS MONTH


FROM ORDERS O


--Count orders per month in 2024.


SELECT EXTRACT(MONTH FROM O.ORDER_DATE) AS MONTH,
	   COUNT(O.ORDER_ID) AS TOTAL_COUNT


FROM ORDERS O

WHERE EXTRACT(YEAR FROM O.ORDER_DATE) = 2024

GROUP BY EXTRACT(MONTH FROM O.ORDER_DATE)



--List customers who signed up in the last 90 days.


SELECT C.CUSTOMER_ID

FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID

WHERE O.ORDER_DATE >= CURRENT_DATE - INTERVAL '90 DAYS'



--Find orders placed between Jan and March 2024.


SELECT O.ORDER_ID,
	   


FROM ORDERS O

WHERE EXTRACT(YEAR FROM O.ORDER_DATE) = 2024 AND EXTRACT(MONTH FROM O.ORDER_DATE) IN (1,2,3)


--Find customers who placed more than 3 orders.


SELECT C.CUSTOMER_ID,
	   COUNT(O.ORDER_ID) AS TOTAL_ORDERS 


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID  = O.CUSTOMER_ID

GROUP BY C.CUSTOMER_ID

HAVING COUNT(O.ORDER_ID) > 3


--Get products that were never ordered.
 
SELECT P.PRODUCT_ID
 

FROM ORDER_ITEMS OI
RIGHT JOIN PRODUCTS P
ON OI.PRODUCT_ID = P.PRODUCT_ID

WHERE OI.PRODUCT_ID IS NULL


--List customers whose total order value is above average.


WITH CUSTOMERS_ORDER_VALUE AS (
SELECT C.CUSTOMER_ID,
       SUM(OI.QUANTITY * OI.PRICE) AS TOTAL_ORDER_VALUE

	   
FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY C.CUSTOMER_ID

)

SELECT CUSTOMER_ID

FROM CUSTOMERS_ORDER_VALUE

WHERE TOTAL_ORDER_VALUE > (SELECT AVG(OI.QUANTITY * OI.PRICE) FROM ORDER_ITEMS OI)


--Get customers who ordered the most expensive product at least once.


WITH EXPENSIVE_PRODUCTS AS(
SELECT PRODUCT_ID,
       PRODUCT_NAME,
	   UNIT_PRICE

FROM PRODUCTS 
ORDER BY UNIT_PRICE DESC

LIMIT 1
)

SELECT O.CUSTOMER_ID,
	   P.PRODUCT_NAME



FROM ORDERS O
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID 
JOIN EXPENSIVE_PRODUCTS EP
ON OI.PRODUCT_ID = EP.PRODUCT_ID
JOIN PRODUCTS P
ON EP.PRODUCT_ID = P.PRODUCT_ID

WHERE  P.PRODUCT_NAME = EP.PRODUCT_NAME


--List all categories where total sales exceed the overall average.


WITH CATEGORY_SALES AS (
SELECT P.CATEGORY,
	   SUM(OI.QUANTITY * OI.PRICE) AS TOTAL_SALES


FROM PRODUCTS P
JOIN ORDER_ITEMS OI
ON P.PRODUCT_ID = OI.PRODUCT_ID

GROUP BY P.CATEGORY

)

SELECT CS.CATEGORY

FROM CATEGORY_SALES CS

WHERE CS.TOTAL_SALES > (SELECT AVG(OI.QUANTITY * OI.PRICE) FROM ORDER_ITEMS OI)


--Using a CTE, calculate revenue per customer.

WITH CUSTOMER_REVENUE AS (

SELECT C.CUSTOMER_ID,
	   SUM(OI.QUANTITY * OI.PRICE) AS TOTAL_REVENUE


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY C.CUSTOMER_ID

)

SELECT *

FROM CUSTOMER_REVENUE


--CTE that gives top 3 products by revenue.


WITH PRODUCT_REVEUNE AS (
SELECT P.PRODUCT_ID,
	   SUM(OI.QUANTITY * P.UNIT_PRICE) AS TOTAL_REVENUE


FROM PRODUCTS P
JOIN ORDER_ITEMS OI
ON P.PRODUCT_ID = OI.PRODUCT_ID

GROUP BY P.PRODUCT_ID
)

SELECT *


FROM PRODUCT_REVEUNE
ORDER BY TOTAL_REVENUE DESC

LIMIT 3


--CTE that finds customers with 2 consecutive-month purchases.
-- HERE I CHANGED QUESTION TO YEAR IN 2024 BECAUSE TWO YEARS ARE THERE I WILL CHECK FOR BOTH YEARS

WITH customer_months AS (
    SELECT 
        c.customer_id,
        DATE_TRUNC('month', o.order_date) AS month_date,
        EXTRACT(year FROM o.order_date) AS year,
        EXTRACT(month FROM o.order_date) AS month,
        ROW_NUMBER() OVER (
            PARTITION BY c.customer_id, EXTRACT(year FROM o.order_date)
            ORDER BY EXTRACT(month FROM o.order_date)
        ) AS rn
    FROM customers c
    JOIN orders o 
        ON c.customer_id = o.customer_id
    WHERE EXTRACT(year FROM o.order_date) IN (2023, 2024)
),
grouped AS (
    SELECT 
        customer_id,
        year,
        month,
        rn,
        month - rn AS grp
    FROM customer_months
),
consecutive AS (
    SELECT 
        customer_id,
        year,
        grp,
        COUNT(*) AS months_in_group
    FROM grouped
    GROUP BY customer_id, year, grp
    HAVING COUNT(*) >= 2          -- meaning at least 2 consecutive months
)
SELECT DISTINCT customer_id
FROM consecutive;



--CTE generating quarter-wise sales.


WITH QUARTER_SALES AS (
SELECT EXTRACT(QUARTER FROM O.ORDER_DATE) AS QUARTER,
	   SUM(OI.QUANTITY * OI.PRICE) AS SALES

FROM ORDERS O
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY EXTRACT(QUARTER FROM O.ORDER_DATE)
)
SELECT *


FROM QUARTER_SALES 



/*
Multi-CTE query showing:

total orders

shipped orders

canceled orders
for each region.
*/


WITH REGION_ORDERS_COUNT AS (

SELECT C.REGION,
       COUNT(O.ORDER_ID) AS TOTAL_ORDERS,
	   COUNT(O.ORDER_ID) FILTER (WHERE O.ORDER_STATUS = 'Completed') AS SHIPPED_ORDERS,
	   COUNT(O.ORDER_ID) FILTER (WHERE O.ORDER_STATUS = 'Cancelled') AS CANCELLED_ORDERS


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID


GROUP BY C.REGION

) 
SELECT *

FROM REGION_ORDERS_COUNT


--List customers who ordered in January OR February.

SELECT C.CUSTOMER_ID

FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID  = O.CUSTOMER_ID

WHERE EXTRACT(MONTH FROM O.ORDER_DATE) IN (1,2)


--Customers who ordered in both March AND April.

SELECT C.CUSTOMER_ID

FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID  = O.CUSTOMER_ID

WHERE EXTRACT(MONTH FROM O.ORDER_DATE) IN (3,4)


--Customers who ordered in May but not June.


SELECT C.CUSTOMER_ID

FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID  = O.CUSTOMER_ID

WHERE EXTRACT(MONTH FROM O.ORDER_DATE) = 5 AND 
      EXTRACT(MONTH FROM O.ORDER_DATE) <> 6

--Products ordered in Q1 but not in Q2.

SELECT OI.PRODUCT_ID

FROM ORDER_ITEMS OI
JOIN ORDERS O
ON OI.ORDER_ID  = O.ORDER_ID

WHERE EXTRACT(QUARTER FROM O.ORDER_DATE) = 1 AND 
	  EXTRACT(QUARTER FROM O.ORDER_DATE) <> 2


--Regions with shipments delivered in both Q2 and Q3.


SELECT C.REGION


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID  = O.CUSTOMER_ID
JOIN SHIPMENTS S
ON O.ORDER_ID = S.ORDER_ID

WHERE EXTRACT(QUARTER FROM S.DELIVERY_DATE) = 2 AND
      EXTRACT(QUARTER FROM S.DELIVERY_DATE) = 3




--Categorize customers as High/Medium/Low based on total spend.


WITH CUSTOMER_SPEND AS (
SELECT C.CUSTOMER_ID,
	   SUM(OI.QUANTITY * OI.PRICE) AS TOTAL_SPEND


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID  = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY  C.CUSTOMER_ID

)
SELECT *,
CASE
	WHEN TOTAL_SPEND > 10000 THEN 'HIGH'
	WHEN TOTAL_SPEND BETWEEN 5000 AND 10000 THEN 'MEDIUM'
    ELSE 'LOW'
END AS SPEND_LEVEL

FROM CUSTOMER_SPEND


--Assign season to each order month.

WITH MONTH AS (
SELECT *,
	   EXTRACT(MONTH FROM O.ORDER_DATE) AS MONTH

FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID

)
SELECT ORDER_ID,
	   ORDER_DATE,
CASE
	WHEN MONTH IN (12,1,2) THEN 'WINTER SEASON'
	WHEN MONTH BETWEEN 3 AND 6 THEN 'SUMMER SEASON'
	ELSE 'RAINY SEASON'
END AS SEASONS
FROM MONTH




--Mark orders as “Fast Delivery” or “Slow Delivery” based on delivery days.


WITH ORDER_DELIVER_DAYS AS (
SELECT O.ORDER_ID,
	   (S.DELIVERY_DATE - O.ORDER_DATE) AS delivery_days
       
FROM SHIPMENTS S
JOIN ORDERS O
ON S.ORDER_ID  =O.ORDER_ID

WHERE S.DELIVERY_DATE IS NOT NULL

)
SELECT *,
CASE
	WHEN delivery_days > 3 THEN 'Slow Delivery'
	ELSE 'FAST DELIVERY'
END AS DELIVERY_LEVEL

FROM ORDER_DELIVER_DAYS 




--Product price category: Premium >1000, Mid 300–1000, Low <300.

SELECT P.PRODUCT_ID,
CASE
	WHEN P.UNIT_PRICE > 1000 THEN 'PREMIUM'
	WHEN P.UNIT_PRICE BETWEEN 300 AND 1000 THEN 'MID'
	ELSE 'LOW'
END AS PRICE_LEVEL
FROM PRODUCTS P



--Mark orders as Weekend Order or Weekday Order.

WITH ORDER_WEEKS AS(
SELECT O.ORDER_ID,
	   EXTRACT(DOW FROM O.ORDER_DATE) AS DAY_OF_WEEK

FROM ORDERS O

)
SELECT *,
CASE
	WHEN DAY_OF_WEEK IN (0,6) THEN 'WEEKEND_ORDERS'
    ELSE 'WEEKDAYS_ORDERS'
END AS ORDER_DAYS

FROM ORDER_WEEKS



--Rank customers by total revenue.

WITH CUSTOMER_TOTAL_REVENUE AS (

SELECT C.CUSTOMER_ID,
	   SUM(OI.QUANTITY * OI.PRICE) AS TOTAL_REVENUE

FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY C.CUSTOMER_ID

)

SELECT *,
	   RANK() OVER(ORDER BY TOTAL_REVENUE DESC) RNK
FROM CUSTOMER_TOTAL_REVENUE


--Dense-rank products by number of orders.

WITH PRODUCTS_ORDERS AS(
SELECT P.PRODUCT_ID,
	   P.PRODUCT_NAME,
	   COUNT(OI.ORDER_ID) AS TOTAL_ORDERS


FROM PRODUCTS P
JOIN ORDER_ITEMS OI
ON P.PRODUCT_ID  =OI.PRODUCT_ID

GROUP BY P.PRODUCT_ID,P.PRODUCT_NAME

)
SELECT *,
	   DENSE_RANK() OVER(ORDER BY TOTAL_ORDERS DESC) AS RNK

FROM PRODUCTS_ORDERS



--Row_number orders per customer by order_date.


WITH CUSTOMER_ORDERS AS (
SELECT C.CUSTOMER_ID,
	   COUNT(O.ORDER_ID) AS TOTAL_ORDERS


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID  = O.CUSTOMER_ID

GROUP BY C.CUSTOMER_ID

)
SELECT *,
	   ROW_NUMBER() OVER(ORDER BY TOTAL_ORDERS DESC) AS ROW

FROM CUSTOMER_ORDERS


--Rank categories by revenue for each region.


SELECT C.REGION,
	   P.CATEGORY,
	   SUM(OI.QUANTITY * OI.PRICE) AS REVENUE,
	   RANK() OVER(PARTITION BY C.REGION ORDER BY SUM(OI.QUANTITY * OI.PRICE) DESC) AS RNK


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID
JOIN PRODUCTS P
ON OI.PRODUCT_ID = P.PRODUCT_ID

GROUP BY C.REGION,
	   P.CATEGORY



--Find the top-selling product each month.

WITH TOP_SELLING_PRODUCTS AS (

SELECT DATE_TRUNC('MONTH',O.ORDER_DATE) AS MONTH,
	   P.PRODUCT_ID,
	   COUNT(O.ORDER_ID) AS ORDER_COUNT,
	   RANK() OVER(PARTITION BY DATE_TRUNC('MONTH',O.ORDER_DATE) ORDER BY COUNT(O.ORDER_ID) DESC) AS RNK
	   

FROM PRODUCTS P
JOIN ORDER_ITEMS OI
ON P.PRODUCT_ID  = OI.PRODUCT_ID 
JOIN ORDERS O
ON OI.ORDER_ID  = O.ORDER_ID

GROUP BY DATE_TRUNC('MONTH',O.ORDER_DATE),
	   P.PRODUCT_ID

)
SELECT *

FROM TOP_SELLING_PRODUCTS
WHERE RNK = 1

--Compute running total of daily revenue.


SELECT
	   EXTRACT(DAY FROM O.ORDER_DATE) AS DAY,
	   EXTRACT(MONTH FROM O.ORDER_DATE) AS MONTH,
	   SUM(OI.QUANTITY * OI.PRICE) OVER(PARTITION BY EXTRACT(DAY FROM O.ORDER_DATE) ORDER BY O.ORDER_DATE ASC) AS RUNNING_TOTSL


FROM ORDERS O
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID


--Monthly revenue with rolling 3-month average.

SELECT DATE_TRUNC('MONTH',O.ORDER_DATE) AS MONTH,
	   AVG(OI.QUANTITY * OI.PRICE) OVER(ORDER BY O.ORDER_DATE ROWS BETWEEN 3 PRECEDING AND CURRENT ROW) AS rolling_3_month_average


FROM ORDERS O

JOIN ORDER_ITEMS OI
ON O.ORDER_ID  = OI.ORDER_ID




--Compare each order’s revenue with previous order of the same customer.

WITH CUSTOMER_ORDERS_REVENUE AS (

SELECT C.CUSTOMER_ID,
	   O.ORDER_ID,
	   SUM(OI.QUANTITY * OI.PRICE) AS CURRENT_REVENUE


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI 
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY C.CUSTOMER_ID,
	   O.ORDER_ID

)
,PREVIOUS_ORDERS_REVENUE AS (
SELECT *,
	   LAG(CURRENT_REVENUE) OVER(PARTITION BY CUSTOMER_ID ORDER BY ORDER_ID) AS PREVIOUS_REVENUE


FROM CUSTOMER_ORDERS_REVENUE


)
SELECT *,
	   (CURRENT_REVENUE - PREVIOUS_REVENUE) * 100 / PREVIOUS_REVENUE AS ORDER_OVER_ORDER_GROWTH,
CASE
	WHEN CURRENT_REVENUE > PREVIOUS_REVENUE THEN 'INCREASED'
	WHEN PREVIOUS_REVENUE IS NULL THEN 'NO CHANGE'
	WHEN CURRENT_REVENUE = PREVIOUS_REVENUE THEN 'REMAINS_SAME'
	ELSE 'DECREASED'
END AS GROWTH_LEVEL

FROM PREVIOUS_ORDERS_REVENUE



--Find customers whose spending increased compared to their last order.


WITH CUSTOMER_ORDERS_REVENUE AS (

SELECT C.CUSTOMER_ID,
	   O.ORDER_ID,
	   SUM(OI.QUANTITY * OI.PRICE) AS CURRENT_REVENUE


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI 
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY C.CUSTOMER_ID,
	   O.ORDER_ID

)
,PREVIOUS_ORDERS_REVENUE AS (
SELECT *,
	   LAG(CURRENT_REVENUE) OVER(PARTITION BY CUSTOMER_ID ORDER BY ORDER_ID) AS PREVIOUS_REVENUE


FROM CUSTOMER_ORDERS_REVENUE


)
,GROWTH_LEVEL_CTE AS (
SELECT *,
	   (CURRENT_REVENUE - PREVIOUS_REVENUE) * 100 / PREVIOUS_REVENUE AS ORDER_OVER_ORDER_GROWTH,
CASE
	WHEN CURRENT_REVENUE > PREVIOUS_REVENUE THEN 'INCREASED'
	WHEN PREVIOUS_REVENUE IS NULL THEN 'NO CHANGE'
	WHEN CURRENT_REVENUE = PREVIOUS_REVENUE THEN 'REMAINS_SAME'
	ELSE 'DECREASED'
END AS GROWTH_LEVEL

FROM PREVIOUS_ORDERS_REVENUE

)
SELECT *

FROM GROWTH_LEVEL_CTE

WHERE GROWTH_LEVEL = 'INCREASED'



--Compute month-over-month profit change.


WITH MONTHLY_REVENUE AS (

SELECT DATE_TRUNC('MONTH',O.ORDER_DATE) AS MONTH,
	   SUM(OI.QUANTITY * OI.PRICE) AS CURRENT_MONTH_REVENUE

FROM ORDERS O
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY DATE_TRUNC('MONTH',O.ORDER_DATE)

)
,PREVIOUS_REVENUE AS (

SELECT *,
	   LAG(CURRENT_MONTH_REVENUE) OVER(ORDER BY MONTH) AS PREVIOUS_MONTH_REVENUE

FROM MONTHLY_REVENUE

)
SELECT *,
	   (CURRENT_MONTH_REVENUE - PREVIOUS_MONTH_REVENUE) * 100 / PREVIOUS_MONTH_REVENUE

FROM PREVIOUS_REVENUE



--Identify delivery delays by comparing shipped_date and previous shipped_date.


SELECT O.ORDER_ID,
	   (S.DELIVERY_DATE - O.ORDER_DATE) AS DELIEVR_DAYS


FROM SHIPMENTS S

JOIN ORDERS O
ON S.ORDER_ID = O.ORDER_ID


--Detect month-over-month product demand drop.


WITH PRODUCT_REVENUE AS (

SELECT P.PRODUCT_NAME,
	   DATE_TRUNC('MONTH',O.ORDER_DATE) AS MONTH,
	   SUM(OI.QUANTITY * OI.PRICE) AS CURRENT_MONTH_REVENUE


FROM PRODUCTS P
JOIN ORDER_ITEMS OI
ON P.PRODUCT_ID = OI.PRODUCT_ID
JOIN ORDERS O
ON OI.ORDER_ID = O.ORDER_ID

GROUP BY P.PRODUCT_NAME,
	   DATE_TRUNC('MONTH',O.ORDER_DATE)
ORDER BY P.PRODUCT_NAME

)
,PREVIOUS_PRODUCT_MONTH_REVENUE AS ( 

SELECT *,
	   LAG(CURRENT_MONTH_REVENUE) OVER(PARTITION BY PRODUCT_NAME ORDER BY MONTH) AS PREVIOUS_MONTH_REVENUE


FROM PRODUCT_REVENUE

),
GROWTH_LEVEL_CTE AS (
SELECT *,
CASE
	WHEN CURRENT_MONTH_REVENUE > PREVIOUS_MONTH_REVENUE THEN 'INCREASED'
	WHEN PREVIOUS_MONTH_REVENUE IS NULL THEN 'NO CHANGE'
	WHEN CURRENT_MONTH_REVENUE = PREVIOUS_MONTH_REVENUE THEN 'REMAINS_SAME'
	ELSE 'DECREASED'
END AS GROWTH_LEVEL

FROM PREVIOUS_PRODUCT_MONTH_REVENUE

)

SELECT *
	   
FROM GROWTH_LEVEL_CTE

WHERE GROWTH_LEVEL = 'DECREASED'



/*
D. Percentile, NTILE

Classify products into price quartiles using NTILE(4).

Compute 90th percentile order value per month.

Assign spending percentile per region.

List products in top 10% of revenue.

Detect top 20% customers by order frequency.

*/

--Classify products into price quartiles using NTILE(4).


SELECT P.PRODUCT_ID,
	   P.UNIT_PRICE,
	   NTILE(4) OVER(ORDER BY P.UNIT_PRICE) AS QUARTILES

FROM PRODUCTS P

ORDER BY P.PRODUCT_ID



--Compute 90th percentile order value per month.

SELECT DATE_TRUNC('MONTH',O.ORDER_DATE) AS MONTH,
       
	   percentile_cont(0.9) WITHIN GROUP (ORDER BY oi.price * oi.quantity) AS p90_order_value


FROM ORDERS O
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY DATE_TRUNC('MONTH',O.ORDER_DATE)


--Assign spending percentile per region.


WITH REGION_REVENUE AS (
SELECT C.REGION,
	   SUM(OI.QUANTITY * OI.PRICE) AS TOTAL_REVENUE


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY C.REGION

)

SELECT REGION,
	   PERCENTILE_CONT(0.9) WITHIN GROUP(ORDER BY TOTAL_REVENUE) AS P90_REGION_REVENUE


FROM REGION_REVENUE
GROUP BY REGION




--List products in top 10% of revenue.

WITH PRODCUT_REVENUE AS (
SELECT P.PRODUCT_NAME,
	   SUM(OI.QUANTITY * OI.PRICE) AS TOTAL_REVENUE

FROM PRODUCTS P
JOIN ORDER_ITEMS OI
ON P.PRODUCT_ID = OI.PRODUCT_ID

GROUP BY P.PRODUCT_NAME
)
,PERCENT_RANKING AS (
SELECT *,
	   PERCENT_RANK() OVER(ORDER BY TOTAL_REVENUE) AS PERCENT_RNK

FROM PRODCUT_REVENUE

)
SELECT *

FROM PERCENT_RANKING

WHERE PERCENT_RNK < 0.1



--Detect top 20% customers by order frequency.


WITH customer_order_counts AS (
    SELECT 
        customer_id,
        COUNT(order_id) AS total_orders
    FROM orders
    GROUP BY customer_id
),
ranked_customers AS (
    SELECT 
        customer_id,
        total_orders,
        PERCENT_RANK() OVER (ORDER BY total_orders DESC) AS percentile
    FROM customer_order_counts
)
SELECT customer_id, total_orders
FROM ranked_customers
WHERE percentile <= 0.2;


/*
Build a customer lifetime value (CLV) table using CTE + window functions.

Detect churn (customers with no orders in last 120 days).

Identify repeat customers (>=3 orders across 3 months).

Monthly cohort retention analysis.

Detect seasonality: which months show top 3 spikes in revenue?

Calculate Sales YoY growth.

Customer purchase journey: first product vs. last product.

Top 5 customers per region by spending.

Detect anomalies: Orders with unusually high item counts.

Build a product cross-sell matrix using window functions.

*/


--Build a customer lifetime value (CLV) table using CTE + window functions.

WITH CUSTOMER_ORDER_VALUE AS (
SELECT C.CUSTOMER_ID,
	   AVG(OI.QUANTITY * OI.PRICE) AS AVERAGE_ORDER_VALUE


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID  = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY C.CUSTOMER_ID
)
,ORDERS_FREQUENCY AS (

SELECT SUB.CUSTOMER_ID,
	   (SUB.TOTAL_ORDERS / SUB.UNIQUE_CUSTOMERS) AS PURCHASE_FREQUENCY

FROM  (
SELECT C.CUSTOMER_ID,
	   COUNT(O.ORDER_ID) AS TOTAL_ORDERS,
	   (SELECT COUNT(DISTINCT CUSTOMER_ID) FROM CUSTOMERS) AS UNIQUE_CUSTOMERS

FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID  = O.CUSTOMER_ID

GROUP BY C.CUSTOMER_ID
) SUB

)
,CUSTOMER_VALUE_CTE AS (

SELECT COV.CUSTOMER_ID,
	   (AVERAGE_ORDER_VALUE * OF.PURCHASE_FREQUENCY) AS CUSTOMER_VALUE


FROM CUSTOMER_ORDER_VALUE COV
JOIN ORDERS_FREQUENCY OF
ON COV.CUSTOMER_ID =  OF.CUSTOMER_ID
)
,CUSTOMER_LIFETIME_SPAN AS (

SELECT SUB.CUSTOMER_ID,
	   AVG(SUB.LAST_ORDER_DATE - SUB.FIRST_ORDER_DATE) AS AVG_CUSTOMER_LIFE_SPAN

FROM (
SELECT C.CUSTOMER_ID,
	   MIN(O.ORDER_DATE) AS FIRST_ORDER_DATE,
	   MAX(O.ORDER_DATE) AS LAST_ORDER_DATE


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID  = O.CUSTOMER_ID

GROUP BY C.CUSTOMER_ID

) SUB

GROUP BY SUB.CUSTOMER_ID

)
SELECT C.CUSTOMER_ID,
	   (C.CUSTOMER_VALUE * CL.AVG_CUSTOMER_LIFE_SPAN) AS CUSTOMER_LIFE_TIME_VALUE

FROM CUSTOMER_VALUE_CTE C
JOIN CUSTOMER_LIFETIME_SPAN CL
ON C.CUSTOMER_ID = CL.CUSTOMER_ID



--Detect churn (customers with no orders in last 120 days).


WITH LAST_ORDER AS (
    SELECT 
        c.customer_id,
        MAX(o.order_date) AS last_order_date
    FROM customers c
    LEFT JOIN orders o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
),
CHURNED_CUSTOMERS AS (
    SELECT 
        customer_id,
        last_order_date,
        CURRENT_DATE - last_order_date AS days_since_last_order
    FROM LAST_ORDER
    WHERE last_order_date IS NULL
       OR CURRENT_DATE - last_order_date > 120
)
SELECT *
FROM CHURNED_CUSTOMERS
ORDER BY days_since_last_order DESC;



--Identify repeat customers (>=3 orders across 3 months).


WITH CUSTOMER_ORDERS AS(

SELECT C.CUSTOMER_ID,
	   DATE_TRUNC('MONTH',O.ORDER_DATE) AS MONTH,
	   COUNT(O.ORDER_ID) AS TOTAL_ORDERS

FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID

GROUP BY C.CUSTOMER_ID,DATE_TRUNC('MONTH',O.ORDER_DATE)
HAVING COUNT(O.ORDER_ID) >= 3

),
CUSTOMERS_WITH_3MONTHS AS (

SELECT CUSTOMER_ID,
	   COUNT(DISTINCT MONTH) AS MONTHS_COUNT

FROM CUSTOMER_ORDERS
GROUP BY CUSTOMER_ID
HAVING COUNT(DISTINCT MONTH) > 3

)
SELECT CUSTOMER_ID

FROM CUSTOMERS_WITH_3MONTHS

INTERSECT

SELECT CUSTOMER_ID

FROM CUSTOMER_ORDERS



--Monthly cohort retention analysis.

SELECT
    DATE_TRUNC('month', O.order_date) AS month_start_date,
    COUNT(*) AS monthly_count,
    SUM(OI.QUANTITY * OI.PRICE) AS monthly_total

FROM   orders O
JOIN ORDER_ITEMS OI
ON O.ORDER_ID  = OI.ORDER_ID
GROUP BY
    DATE_TRUNC('month', O.order_date)  
ORDER BY
    month_start_date





--Calculate Sales YoY growth.

SELECT EXTRACT(YEAR FROM O.ORDER_DATE) AS YEAR,
	   SUM(OI.QUANTITY * OI.PRICE) AS SALES_GROWTH


FROM ORDERS O
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY EXTRACT(YEAR FROM O.ORDER_DATE)



--Customer purchase journey: first product vs. last product.

WITH CUSTOMERS_FIRST_LAST_ORDERS AS (

SELECT C.CUSTOMER_NAME,
	   P.PRODUCT_NAME,
	   MIN(O.ORDER_DATE) AS FIRST_ORDER_DATE,
	   MAX(O.ORDER_DATE) AS LAST_ORDER_DATE



FROM PRODUCTS P
JOIN ORDER_ITEMS OI
ON P.PRODUCT_ID = OI.PRODUCT_ID
JOIN ORDERS  O
ON OI.ORDER_ID = O.ORDER_ID
JOIN CUSTOMERS C
ON C.CUSTOMER_ID = O.CUSTOMER_ID

GROUP BY C.CUSTOMER_NAME,
	   P.PRODUCT_NAME

)
,RANKING_FIRST_ORDERS AS (

SELECT SUB.*
	   
FROM (
SELECT  CUSTOMER_NAME,
	    PRODUCT_NAME AS FIRST_PRODUCT,
		FIRST_ORDER_DATE,
		ROW_NUMBER() OVER(PARTITION BY CUSTOMER_NAME ORDER BY FIRST_ORDER_DATE,LAST_ORDER_DATE) AS FIRST_ORDERS
		

FROM CUSTOMERS_FIRST_LAST_ORDERS
) SUB

WHERE SUB.FIRST_ORDERS =  1

)
,RANKING_LAST_ORDERS AS (

SELECT SUB.*
	   
FROM (
SELECT  CUSTOMER_NAME,
	    PRODUCT_NAME AS LAST_PRODUCT,
		LAST_ORDER_DATE,
		ROW_NUMBER() OVER(PARTITION BY CUSTOMER_NAME ORDER BY LAST_ORDER_DATE DESC) AS LAST_ORDERS
		

FROM CUSTOMERS_FIRST_LAST_ORDERS
) SUB

WHERE SUB.LAST_ORDERS =  1

)
SELECT RF.CUSTOMER_NAME,
	   RF.FIRST_PRODUCT,
	   RL.LAST_PRODUCT,
	   RF.FIRST_ORDER_DATE,
	   RL.LAST_ORDER_DATE


FROM RANKING_FIRST_ORDERS RF
JOIN RANKING_LAST_ORDERS RL
ON RF.CUSTOMER_NAME = RL.CUSTOMER_NAME


ORDER BY RF.CUSTOMER_NAME


--Top 5 customers per region by spending.


WITH CUSTOMER_SPENDING AS (

SELECT C.REGION,
	   C.CUSTOMER_NAME,
	   SUM(OI.QUANTITY * OI.PRICE) AS TOTAL_SPENDING


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY C.REGION,
	   C.CUSTOMER_NAME


)
SELECT SUB.*

FROM  (
SELECT *,
	   RANK() OVER(PARTITION BY REGION ORDER BY TOTAL_SPENDING DESC) AS RNK

FROM CUSTOMER_SPENDING
) SUB

WHERE SUB.RNK <= 5




--Create a view of monthly revenue per category.

CREATE MATERIALIZED VIEW monthly_revenue_category AS

SELECT P.CATEGORY,
	   DATE_TRUNC('MONTH',O.ORDER_DATE) AS MONTH,
	   SUM(OI.QUANTITY * OI.PRICE) AS REVENUE


FROM PRODUCTS P
JOIN ORDER_ITEMS OI
ON P.PRODUCT_ID = OI.PRODUCT_ID
JOIN ORDERS O
ON OI.ORDER_ID = O.ORDER_ID

GROUP BY P.CATEGORY,
	   DATE_TRUNC('MONTH',O.ORDER_DATE)


ORDER BY P.CATEGORY,MONTH 



SELECT *

FROM monthly_revenue_category


--Create a view showing top 3 products per category by revenue.


CREATE MATERIALIZED VIEW category_product_revenue AS

WITH  CATEGORY_PRODUCT_REVENUE AS (

SELECT P.CATEGORY,
	   P.PRODUCT_NAME,
	   SUM(OI.QUANTITY * OI.PRICE) AS REVENUE


FROM PRODUCTS P
JOIN ORDER_ITEMS OI
ON P.PRODUCT_ID = OI.PRODUCT_ID
JOIN ORDERS O
ON OI.ORDER_ID = O.ORDER_ID

GROUP BY  P.CATEGORY,
	   P.PRODUCT_NAME


)
SELECT SUB.*
	   
FROM (
SELECT *,
	   RANK() OVER(PARTITION BY CATEGORY ORDER BY REVENUE DESC) RNK

FROM CATEGORY_PRODUCT_REVENUE

) SUB

WHERE SUB.RNK <= 5


SELECT *

FROM category_product_revenue



--Create a view for customer order frequency.

WITH CUSTOMER_ORDERS AS (

SELECT C.CUSTOMER_NAME,
	   COUNT(O.ORDER_ID) AS TOTAL_ORDERS,
	   (SELECT COUNT(DISTINCT CUSTOMER_ID) FROM CUSTOMERS) AS CUSTOMERS_COUNT


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID

GROUP BY C.CUSTOMER_ID

)
SELECT CUSTOMER_NAME,
	   (CUSTOMERS_COUNT / TOTAL_ORDERS) AS ORDER_FREQUENCY

FROM CUSTOMER_ORDERS


--Create a view combining orders + shipments + revenue.

CREATE MATERIALIZED VIEW orders_shipments_revenue AS

SELECT O.ORDER_ID,
	   COUNT(S.SHIPMENT_ID) FILTER (WHERE S.SHIPPING_STATUS = 'Delivered') AS DELIVERED_ORDERS,
       COUNT(S.SHIPMENT_ID) FILTER (WHERE S.SHIPPING_STATUS = 'Cancelled') AS CANCELLED_ORDERS,
	   COUNT(S.SHIPMENT_ID) FILTER (WHERE S.SHIPPING_STATUS = 'Pending') AS PENDING_ORDERS,
	   SUM(OI.QUANTITY * OI.PRICE) AS TOTAL_REVENUE

FROM ORDERS O
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID
JOIN SHIPMENTS S
ON OI.ORDER_ID = S.ORDER_ID

GROUP BY O.ORDER_ID


SELECT * FROM orders_shipments_revenue


--Create a materialized view of Q1-Q4 revenue summary


CREATE MATERIALIZED VIEW quarter_summary AS

SELECT EXTRACT(QUARTER FROM O.ORDER_DATE) AS QUARTER,
	   COUNT(S.SHIPMENT_ID) FILTER (WHERE S.SHIPPING_STATUS = 'Delivered') AS DELIVERED_ORDERS,
       COUNT(S.SHIPMENT_ID) FILTER (WHERE S.SHIPPING_STATUS = 'Cancelled') AS CANCELLED_ORDERS,
	   COUNT(S.SHIPMENT_ID) FILTER (WHERE S.SHIPPING_STATUS = 'Pending') AS PENDING_ORDERS,
	   SUM(OI.QUANTITY * OI.PRICE) AS REVENUE


FROM ORDERS O
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID
JOIN SHIPMENTS S
ON OI.ORDER_ID = S.ORDER_ID

GROUP BY EXTRACT(QUARTER FROM O.ORDER_DATE) 
ORDER BY QUARTER


SELECT * FROM quarter_summary;


--Materialized view for top 10 customers by lifetime spend.

CREATE MATERIALIZED VIEW top_10_customers AS

WITH CUSTOMER_SPENDING AS (

SELECT C.CUSTOMER_ID,
	   SUM(OI.QUANTITY * OI.PRICE) AS TOTAL_REVENUE


FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY C.CUSTOMER_ID

)
SELECT SUB.*

FROM (
SELECT *,
	   RANK() OVER(ORDER BY TOTAL_REVENUE DESC) AS RNK

FROM CUSTOMER_SPENDING

) SUB

WHERE SUB.RNK <= 10



--Materialized view of monthly sales with rolling 3-month average.


SELECT DATE_TRUNC('MONTH',O.ORDER_DATE) AS MONTH,
	   AVG(OI.QUANTITY * OI.PRICE) OVER(ORDER BY O.ORDER_DATE RANGE BETWEEN INTERVAL '3 MONTHS' PRECEDING AND CURRENT ROW) AS AVGERAGE_ROLLING_WINDOW


FROM ORDERS O
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID




--Materialized view detecting quarterly revenue growth.

WITH QUARTERLY_REVENUE AS (

SELECT EXTRACT(QUARTER FROM O.ORDER_DATE) AS QUARTER,
	   SUM(OI.QUANTITY * OI.PRICE) AS CURRENT_REVENUE

FROM ORDERS O
JOIN ORDER_ITEMS OI
ON O.ORDER_ID = OI.ORDER_ID

GROUP BY EXTRACT(QUARTER FROM O.ORDER_DATE)

)
,PREVIOUS_QUARTER_REVENUE_CTE AS (
SELECT *,
	   LAG(CURRENT_REVENUE) OVER(ORDER BY QUARTER) AS PREVIOUS_QUARTER_REVENUE


FROM QUARTERLY_REVENUE

)

SELECT *,
	   (CURRENT_REVENUE - PREVIOUS_QUARTER_REVENUE) * 100 / NULLIF(PREVIOUS_QUARTER_REVENUE,0) AS REVENUE_GROWTH,
CASE
	WHEN CURRENT_REVENUE > PREVIOUS_QUARTER_REVENUE THEN 'INCREASED'
	WHEN PREVIOUS_QUARTER_REVENUE IS NULL THEN 'NO CHANGE'
	WHEN CURRENT_REVENUE < PREVIOUS_QUARTER_REVENUE THEN 'DESCRESED'
	ELSE 'REMAINS SAME'
END AS GROWTH_LEVEL

FROM PREVIOUS_QUARTER_REVENUE_CTE 



--Create a function that returns total orders of a customer.

CREATE OR REPLACE FUNCTION get_total_orders(p_customer_id INT)
RETURNS INT AS $$

DECLARE
	   ORDER_COUNT INT;

BEGIN
	 SELECT COUNT(*)
	 INTO ORDER_COUNT
	 FROM ORDERS 
	 WHERE CUSTOMER_ID = p_customer_id;

	 RETURN ORDER_COUNT;

END;
$$ LANGUAGE plpgsql;


SELECT * FROM get_total_orders(5)




--Function to return customer lifetime spend.

CREATE OR REPLACE FUNCTION customer_life_time_spend(P_CUSTOMER_ID INT)
RETURNS INT AS $$
DECLARE 
       LIFE_TIME_SPEND NUMERIC(12,2);


BEGIN
	 SELECT SUM(OI.QUANTITY * OI.PRICE)
	 INTO LIFE_TIME_SPEND
	 FROM ORDERS O
	 JOIN ORDER_ITEMS OI
	 ON O.ORDER_ID = OI.ORDER_ID
	 WHERE O.CUSTOMER_ID = P_CUSTOMER_ID;


	 RETURN LIFE_TIME_SPEND;


END;
$$ LANGUAGE PLPGSQL;



SELECT * FROM  customer_life_time_spend(50)


--Function to return product demand(RANKINGS) for a given year.


CREATE OR REPLACE FUNCTION product_per_year(p_year INT, p_product_id INT)
RETURNS INT AS $$
DECLARE
    product_rank INT;
BEGIN
    SELECT rn INTO product_rank
    FROM (
        SELECT
            p.product_id,
            SUM(oi.quantity * oi.price) AS revenue,
            RANK() OVER (ORDER BY SUM(oi.quantity * oi.price) DESC) AS rn
        FROM orders o
        JOIN order_items oi ON o.order_id = oi.order_id
        JOIN products p ON p.product_id = oi.product_id
        WHERE EXTRACT(YEAR FROM o.order_date) = p_year
        GROUP BY 1
    ) ranked
    WHERE product_id = p_product_id;

    RETURN product_rank;
END;
$$ LANGUAGE plpgsql;

			

SELECT * FROM product_per_year(2023,5)





--Function that returns monthly revenue summary as a table.


CREATE OR REPLACE FUNCTION monthly_revenue()
RETURNS TABLE (
    month DATE,
    revenue NUMERIC(12,2)
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        DATE_TRUNC('MONTH', o.order_date)::date AS month,
        SUM(oi.quantity * oi.price) AS revenue
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY 1
    ORDER BY 1;
END;
$$ LANGUAGE plpgsql;

    

SELECT * FROM monthly_revenue()




--. Compute 7-day rolling revenue per region excluding weekend orders

--Use FILTER + window frames.

WITH daily_region_revenue AS (
    SELECT
        c.region,
        o.order_date::date AS order_day,
        SUM(oi.quantity * oi.price) AS daily_revenue
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_items oi
        ON o.order_id = oi.order_id
    WHERE EXTRACT(DOW FROM o.order_date) NOT IN (0,6)
    GROUP BY c.region, o.order_date::date
)
SELECT
    region,
    order_day,
    SUM(daily_revenue) FILTER (WHERE daily_revenue IS NOT NULL)
        OVER (
            PARTITION BY region
            ORDER BY order_day
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS rolling_7d_revenue
FROM daily_region_revenue
ORDER BY region, order_day;



--5. Identify the "first decreasing trend" in each product’s 10-day moving average

--Use window + LAG over the moving average output.

WITH daily_revenue AS (
    SELECT
        p.product_name,
        o.order_date::date AS order_day,
        SUM(oi.quantity * oi.price) AS daily_revenue
    FROM products p
    JOIN order_items oi
        ON p.product_id = oi.product_id
    JOIN orders o
        ON oi.order_id = o.order_id
    GROUP BY p.product_name, o.order_date::date
),
moving_avg AS (
    SELECT
        product_name,
        order_day,
        AVG(daily_revenue) OVER (
            PARTITION BY product_name
            ORDER BY order_day
            ROWS BETWEEN 9 PRECEDING AND CURRENT ROW
        ) AS ma_10
    FROM daily_revenue
),
compare_prev AS (
    SELECT
        *,
        LAG(ma_10) OVER (
            PARTITION BY product_name
            ORDER BY order_day
        ) AS prev_ma
    FROM moving_avg
),
first_drop AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY product_name
               ORDER BY order_day
           ) AS rn
    FROM compare_prev
    WHERE ma_10 < prev_ma
)
SELECT *
FROM first_drop
WHERE rn = 1;




--7. Build a CTE that detects customers who churned after 2 months inactivity

--Then compare with customers who returned later.



SELECT O.CUSTOMER_ID,
	   MIN(O.ORDER_DATE) AS FIRST_O


FROM ORDERS O










































































SELECT * FROM CUSTOMERS;

SELECT * FROM ORDERS;

SELECT * FROM ORDER_ITEMS;

SELECT * FROM SHIPMENTS;

SELECT * FROM PRODUCTS;



