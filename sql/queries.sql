-- ============================================
-- Retail Analytics SQL Queries
-- Project: Retail Analytics using SQL and Python
-- ============================================

-- Table name: retail


-- 1. Revenue by Country
SELECT
    Country,
    SUM(Revenue) AS Total_Revenue
FROM retail
GROUP BY Country
ORDER BY Total_Revenue DESC;


-- 2. Top 10 Selling Products by Quantity
SELECT
    Description,
    SUM(Quantity) AS Total_Quantity
FROM retail
GROUP BY Description
ORDER BY Total_Quantity DESC
LIMIT 10;


-- 3. Top 10 Products by Revenue
SELECT
    Description,
    SUM(Revenue) AS Total_Revenue
FROM retail
GROUP BY Description
ORDER BY Total_Revenue DESC
LIMIT 10;


-- 4. Monthly Revenue Trend
SELECT
    strftime('%Y-%m', InvoiceDate) AS Month,
    SUM(Revenue) AS Monthly_Revenue
FROM retail
GROUP BY Month
ORDER BY Month;


-- 5. Top 10 Customers by Revenue
SELECT
    CustomerID,
    SUM(Revenue) AS Customer_Revenue
FROM retail
GROUP BY CustomerID
ORDER BY Customer_Revenue DESC
LIMIT 10;


-- 6. Customer Purchase Frequency
SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS Purchases
FROM retail
GROUP BY CustomerID
ORDER BY Purchases DESC
LIMIT 10;


-- 7. Average Order Value by Customer
SELECT
    CustomerID,
    AVG(Revenue) AS Avg_Order_Value
FROM retail
GROUP BY CustomerID
ORDER BY Avg_Order_Value DESC
LIMIT 10;


-- 8. Revenue by Month and Country
SELECT
    strftime('%Y-%m', InvoiceDate) AS Month,
    Country,
    SUM(Revenue) AS Total_Revenue
FROM retail
GROUP BY Month, Country
ORDER BY Month, Total_Revenue DESC;


-- 9. Number of Transactions by Country
SELECT
    Country,
    COUNT(DISTINCT InvoiceNo) AS Total_Transactions
FROM retail
GROUP BY Country
ORDER BY Total_Transactions DESC;


-- 10. Top Products Purchased in the United Kingdom
SELECT
    Description,
    SUM(Quantity) AS Total_Quantity
FROM retail
WHERE Country = 'United Kingdom'
GROUP BY Description
ORDER BY Total_Quantity DESC
LIMIT 10;