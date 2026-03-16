--1. Check NULL values--

SELECT 
COUNT(*) AS NullCustomers
FROM Customers
WHERE CustomerID IS NULL 
OR FirstName IS NULL 
OR LastName IS NULL;

--2. Check duplicate customers--

SELECT CustomerID, COUNT(*)
FROM Customers
GROUP BY CustomerID
HAVING COUNT(*) > 1;

--3. Check invalid discounts--

SELECT *
FROM Transactions
WHERE Discount < 0 OR Discount > 1;

--4. Check orphan transactions (broken relationships)--

SELECT *
FROM Transactions t
LEFT JOIN Customers c
ON t.CustomerID = c.CustomerID
WHERE c.CustomerID IS NULL;

--5. Basic data profiling--

SELECT 
COUNT(*) AS total_transactions,
COUNT(DISTINCT CustomerID) AS unique_customers,
COUNT(DISTINCT ProductID) AS unique_products,
COUNT(DISTINCT StoreID) AS unique_stores
FROM Transactions;

--6 Join Fact + Dimension Tables--

SELECT
t.TransactionID,
t.Date,
c.FirstName,
c.LastName,
p.ProductName,
s.StoreName,
t.Quantity,
p.UnitPrice,
t.Discount,
(t.Quantity * p.UnitPrice * (1 - t.Discount)) AS Revenue
FROM Transactions t
JOIN Customers c
ON t.CustomerID = c.CustomerID
JOIN Products p
ON t.ProductID = p.ProductID
JOIN Stores s
ON t.StoreID = s.StoreID;