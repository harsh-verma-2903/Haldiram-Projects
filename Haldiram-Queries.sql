SELECT * from [haldiram-analysis]

--1.Total Revenue:
SELECT SUM(Total_Price) AS Total_Revenue FROM [haldiram-analysis];

--2.Revenue by Category:
SELECT Category, SUM(Total_Price) AS Revenue
FROM [haldiram-analysis]
GROUP BY Category
ORDER BY Revenue DESC;

--3.Top 5 Products by Revenue:
SELECT TOP 5 Product_Name, SUM(Total_Price) AS Total_Sales
FROM [haldiram-analysis]
GROUP BY Product_Name
ORDER BY Total_Sales DESC;

--4.City-wise Revenue:
SELECT Store_Location, SUM(Total_Price) AS Revenue
FROM [haldiram-analysis]
GROUP BY Store_Location
ORDER BY Revenue DESC;

--5.Orders per City:
SELECT Store_Location, COUNT(Order_ID) AS Total_Orders
FROM [haldiram-analysis]
GROUP BY Store_Location
ORDER BY Total_Orders DESC;

--6.Monthly Revenue:
SELECT Month, SUM(Total_Price) AS Revenue
FROM [haldiram-analysis]
GROUP BY Month
ORDER BY Month;

--7.Orders Trend By Months
SELECT Order_Month, COUNT(*) AS Orders
FROM [haldiram-analysis]
GROUP BY Order_Month
ORDER BY Orders DESC;

--8.Average Rating per Category:
SELECT Category, AVG(Customer_Rating) AS Avg_Rating
FROM [haldiram-analysis]
GROUP BY Category
ORDER BY Avg_Rating DESC;

--9.Rating Category Distribution Customers:
SELECT Rating_Category, COUNT(*) AS Total_Customers
FROM [haldiram-analysis]
GROUP BY Rating_Category;

--10.Rating Category Distribution
SELECT Revenue_Category, COUNT(*) AS Count
FROM [haldiram-analysis]
GROUP BY Revenue_Category;
