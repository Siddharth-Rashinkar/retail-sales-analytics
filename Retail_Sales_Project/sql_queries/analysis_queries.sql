-- =========================================
-- RETAIL SALES ANALYTICS PROJECT
-- SQL BUSINESS ANALYSIS
-- =========================================




-- 1. VIEW COMPLETE DATASET

SELECT *
FROM sales;




-- 2. TOTAL REVENUE


SELECT SUM(Sales) AS total_revenue
FROM sales;



-- 3. TOTAL SALES BY CITY


SELECT City,
       SUM(Sales) AS total_sales
FROM sales
GROUP BY City
ORDER BY total_sales DESC;




-- 4. BEST PRODUCT LINE


SELECT `Product line`,
       SUM(Sales) AS revenue
FROM sales
GROUP BY `Product line`
ORDER BY revenue DESC;




-- 5. PAYMENT METHOD ANALYSIS


SELECT Payment,
       COUNT(*) AS total_transactions
FROM sales
GROUP BY Payment
ORDER BY total_transactions DESC;



-- 6. AVERAGE CUSTOMER RATING

SELECT AVG(Rating) AS average_rating
FROM sales;



-- 7. AVERAGE RATING BY PRODUCT LINE

SELECT `Product line`,
       AVG(Rating) AS avg_rating
FROM sales
GROUP BY `Product line`
ORDER BY avg_rating DESC;



-- 8. SALES BY GENDER

SELECT Gender,
       SUM(Sales) AS total_sales
FROM sales
GROUP BY Gender;



-- 9. BEST CUSTOMER TYPE

SELECT `Customer type`,
       SUM(Sales) AS revenue
FROM sales
GROUP BY `Customer type`
ORDER BY revenue DESC;



-- 10. MONTHLY SALES TREND

SELECT Month,
       SUM(Sales) AS monthly_sales
FROM sales
GROUP BY Month
ORDER BY monthly_sales DESC;



-- 11. TOP 5 HIGHEST SALES TRANSACTIONS

SELECT City,
       `Product line`,
       Sales
FROM sales
ORDER BY Sales DESC
LIMIT 5;



-- 12. CITY WITH HIGHEST GROSS INCOME

SELECT City,
       SUM(`gross income`) AS total_income
FROM sales
GROUP BY City
ORDER BY total_income DESC;