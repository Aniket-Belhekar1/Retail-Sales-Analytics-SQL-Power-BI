--Business Analysis Queries--

--1.Total sales by category

SELECT 
p.Category,
SUM(t.Quantity * p.UnitPrice * (1 - t.Discount)) AS TotalSales
FROM Transactions t
JOIN Products p
ON t.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TotalSales DESC;

--2. Top selling products

SELECT 
p.ProductName,
SUM(t.Quantity * p.UnitPrice * (1 - t.Discount)) AS TotalSales
FROM Transactions t
JOIN Products p
ON t.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSales DESC;

--3. Sales by store

SELECT 
s.StoreName,
SUM(t.Quantity * p.UnitPrice * (1 - t.Discount)) AS StoreRevenue
FROM Transactions t
JOIN Products p
ON t.ProductID = p.ProductID
JOIN Stores s
ON t.StoreID = s.StoreID
GROUP BY s.StoreName
ORDER BY StoreRevenue DESC;

--4. Monthly revenue trend

SELECT 
YEAR(Date) AS Year,
MONTH(Date) AS Month,
SUM(t.Quantity * p.UnitPrice * (1 - t.Discount)) AS Revenue
FROM Transactions t
JOIN Products p
ON t.ProductID = p.ProductID
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY Year, Month;

--5. Top customers by spending

SELECT 
c.FirstName,
c.LastName,
SUM(t.Quantity * p.UnitPrice * (1 - t.Discount)) AS TotalSpent
FROM Transactions t
JOIN Customers c
ON t.CustomerID = c.CustomerID
JOIN Products p
ON t.ProductID = p.ProductID
GROUP BY c.FirstName, c.LastName
ORDER BY TotalSpent DESC;

--6. Rank top products in each category

SELECT *
FROM (
SELECT 
p.Category,
p.ProductName,
SUM(t.Quantity) AS UnitsSold,
RANK() OVER(PARTITION BY p.Category ORDER BY SUM(t.Quantity) DESC) AS RankInCategory
FROM Transactions t
JOIN Products p
ON t.ProductID = p.ProductID
GROUP BY p.Category, p.ProductName
) ranked
WHERE RankInCategory <= 3;