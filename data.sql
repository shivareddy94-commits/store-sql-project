USE store_db;

-- 1. Customers
INSERT INTO customers VALUES
(1, 'Anil Kumar', 'Dallas', '2024-01-15'),
(2, 'Priya Reddy', 'Houston', '2024-02-20'),
(3, 'John Smith', 'New York', '2024-03-05'),
(4, 'Maria Garcia', 'Chicago', '2024-03-18'),
(5, 'David Lee', 'Dallas', '2024-04-10'),
(6, 'Sara Khan', 'Atlanta', '2024-05-22'),
(7, 'Ravi Teja', 'Houston', '2024-06-01'),
(8, 'Emily Brown', 'New York', '2024-07-14'),
(9, 'Kiran Rao', 'Chicago', '2024-08-30'),
(10, 'Lisa Wong', 'Atlanta', '2024-09-12');

-- 2. Products
INSERT INTO products VALUES
(1, 'Bodysuit', 'Shapewear', 39.99),
(2, 'Waist Trainer', 'Shapewear', 29.99),
(3, 'Shaping Shorts', 'Shapewear', 24.99),
(4, 'Leggings', 'Activewear', 34.99),
(5, 'Sports Bra', 'Activewear', 22.99),
(6, 'Yoga Pants', 'Activewear', 44.99),
(7, 'T-Shirt', 'Clothing', 14.99),
(8, 'Hoodie', 'Clothing', 49.99),
(9, 'Socks Pack', 'Accessories', 9.99),
(10, 'Water Bottle', 'Accessories', 12.99);

-- 3. Orders
INSERT INTO orders VALUES
(1, 1, '2025-01-05'),
(2, 2, '2025-01-12'),
(3, 3, '2025-01-20'),
(4, 1, '2025-02-03'),
(5, 4, '2025-02-14'),
(6, 5, '2025-02-25'),
(7, 6, '2025-03-08'),
(8, 2, '2025-03-15'),
(9, 7, '2025-03-22'),
(10, 8, '2025-04-02'),
(11, 3, '2025-04-18'),
(12, 9, '2025-05-06'),
(13, 1, '2025-05-20'),
(14, 5, '2025-06-11'),
(15, 7, '2025-06-28');

-- 4. Order items
INSERT INTO order_items VALUES
(1, 1, 2), (1, 9, 1),
(2, 2, 1), (2, 5, 2),
(3, 4, 1), (3, 7, 3),
(4, 3, 2),
(5, 6, 1), (5, 10, 2),
(6, 8, 1), (6, 9, 3),
(7, 1, 1), (7, 2, 1),
(8, 4, 2),
(9, 5, 1), (9, 6, 1),
(10, 7, 2), (10, 8, 1),
(11, 1, 3),
(12, 3, 1), (12, 10, 1),
(13, 2, 2), (13, 9, 2),
(14, 6, 1),
(15, 4, 1);