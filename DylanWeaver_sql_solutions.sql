-- Dylan Weaver - TSE Assessment

-- Question 1: Basic SELECT with WHERE
SELECT
    name,
    email,
    signup_date,
    status
FROM Customers
WHERE name = 'Alice Johnson';

-- Question 2: Filtering with Multiple Conditions
SELECT
    name,
    email,
    signup_date
FROM Customers
WHERE status = 'inactive'
  AND signup_date < '2024-06-01';

-- Question 3: Counting Records
SELECT
    category,
    COUNT(*) AS product_count
FROM Products
GROUP BY category;

-- Question 4: Calculating Totals
SELECT
    SUM(total_amount) AS total_completed_revenue
FROM Orders
WHERE status = 'completed';

-- Question 5: Sorting and Limiting Results
SELECT TOP 10
    id,
    customer_id,
    order_date,
    total_amount,
    status
FROM Orders
ORDER BY order_date DESC;

-- Question 6: String Pattern Matching
SELECT
    name,
    email
FROM Customers
WHERE email LIKE '%smith%';

-- Question 7: Handling NULL Values
SELECT
    id,
    name,
    signup_date
FROM Customers
WHERE email IS NULL;

-- Extra Credit 1: INNER JOIN
SELECT
    o.id AS order_id,
    o.order_date,
    o.total_amount,
    c.name AS customer_name
FROM Orders o
INNER JOIN Customers c
    ON o.customer_id = c.id
WHERE o.status = 'completed';
