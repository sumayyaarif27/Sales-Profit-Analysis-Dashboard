-- ============================================================
-- Sales & Profit Analysis - SQL Queries
-- Dataset: PowerBI_Sales_Dashboard_Dataset
-- Tool: DB Browser for SQLite
-- ============================================================

-- Query 1: Preview the data (basic check after import)
SELECT * FROM PowerBI_Sales_Dashboard_Dataset LIMIT 10;


-- Query 2: Total Sales by Region
-- Finds which region generates the highest revenue
SELECT Region, SUM(Sales) AS Total_Sales
FROM PowerBI_Sales_Dashboard_Dataset
GROUP BY Region
ORDER BY Total_Sales DESC;
-- Insight: East region generates the highest sales (~1.02 Cr),
-- notably ahead of South, West, and North.


-- Query 3: Top 5 Products by Profit
-- Identifies the most profitable products (not just highest-selling)
SELECT Product, SUM(Profit) AS Total_Profit
FROM PowerBI_Sales_Dashboard_Dataset
GROUP BY Product
ORDER BY Total_Profit DESC
LIMIT 5;
-- Insight: Keyboard is the most profitable product, followed
-- closely by Redmi, OnePlus, and Samsung phones.


-- Query 4: Sales and Profit by Category
-- Compares performance across Electronics, Furniture, and Office Supplies
SELECT Category, 
       SUM(Sales) AS Total_Sales, 
       SUM(Profit) AS Total_Profit
FROM PowerBI_Sales_Dashboard_Dataset
GROUP BY Category
ORDER BY Total_Sales DESC;
-- Insight: Electronics dominates, contributing over 78% of
-- both total sales and total profit.


-- Query 5: Monthly Sales Trend
-- Extracts Year-Month from Order Date to see seasonal patterns
SELECT strftime('%Y-%m', [Order Date]) AS Month, 
       SUM(Sales) AS Total_Sales
FROM PowerBI_Sales_Dashboard_Dataset
GROUP BY Month
ORDER BY Month;
-- Insight: September is the peak sales month (~49.9 lakh),
-- nearly 3x February's sales, the weakest month.


-- Query 6: Impact of Discount Bands on Sales and Profit
-- Groups orders into discount bands to see how discounting affects profit
SELECT 
  CASE 
    WHEN Discount = 0 THEN 'No Discount'
    WHEN Discount > 0 AND Discount <= 0.2 THEN 'Low (0-20%)'
    WHEN Discount > 0.2 AND Discount <= 0.4 THEN 'Medium (20-40%)'
    ELSE 'High (40%+)'
  END AS Discount_Band,
  SUM(Sales) AS Total_Sales,
  SUM(Profit) AS Total_Profit
FROM PowerBI_Sales_Dashboard_Dataset
GROUP BY Discount_Band
ORDER BY Total_Profit DESC;
-- Insight: All orders fall under "No Discount" or "Low (0-20%)" -
-- the business never exceeds a 20% discount, showing disciplined
-- pricing control that protects profit margins.