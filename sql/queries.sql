# Category Sales Summary
SELECT Category, 
       SUM(Purchase_Amount_USD) AS Total_Sales,
       AVG(Review_Rating) AS Avg_Rating,
       COUNT(*) AS Total_Orders
FROM customer_segmentation
GROUP BY Category
ORDER BY Total_Sales DESC;

# Age-wise spending
SELECT Age, 
       SUM(Purchase_Amount_USD) AS Total_Spend
FROM customer_segmentation
GROUP BY Age
ORDER BY Age;

#Seasonal spending
SELECT Season,
       SUM(Purchase_Amount_USD) AS Total_Spend
FROM customer_segmentation
GROUP BY Season
ORDER BY Total_Spend DESC;

#Location-wise spending
SELECT Location,
       SUM(Purchase_Amount_USD) AS Total_Spend
FROM customer_segmentation
GROUP BY Location
ORDER BY Total_Spend DESC;

#Discount impact
SELECT Category, 
       SUM(CASE WHEN Discount_Applied = 'Yes' THEN Purchase_Amount_USD END) AS Discount_Spend,
       SUM(CASE WHEN Discount_Applied = 'No' THEN Purchase_Amount_USD END) AS No_Discount_Spend
FROM customer_segmentation
GROUP BY Category;
