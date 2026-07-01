-- ==========================================================
-- AI Powered Ola Ride Analytics
-- 40 Business SQL Queries
-- Author : Suryansh Singh
-- Database : ola_analytics
-- ==========================================================

USE ola_analytics;

-- ==========================================================
-- 1. Total Number of Rides
-- ==========================================================

SELECT COUNT(*) AS Total_Rides
FROM ola_rides;

-- ==========================================================
-- 2. Total Revenue
-- ==========================================================

SELECT SUM(`Booking Value`) AS Total_Revenue
FROM ola_rides;

-- ==========================================================
-- 3. Average Ride Fare
-- ==========================================================

SELECT AVG(`Booking Value`) AS Average_Fare
FROM ola_rides;

-- ==========================================================
-- 4. Average Ride Distance
-- ==========================================================

SELECT AVG(`Ride Distance`) AS Average_Distance
FROM ola_rides;

-- ==========================================================
-- 5. Revenue by City
-- ==========================================================

SELECT
City,
SUM(`Booking Value`) AS Revenue
FROM ola_rides
GROUP BY City
ORDER BY Revenue DESC;

-- ==========================================================
-- 6. Revenue by Vehicle Type
-- ==========================================================

SELECT
`Vehicle Type`,
SUM(`Booking Value`) AS Revenue
FROM ola_rides
GROUP BY `Vehicle Type`
ORDER BY Revenue DESC;

-- ==========================================================
-- 7. Total Rides by Vehicle Type
-- ==========================================================

SELECT
`Vehicle Type`,
COUNT(*) AS Total_Rides
FROM ola_rides
GROUP BY `Vehicle Type`
ORDER BY Total_Rides DESC;

-- ==========================================================
-- 8. Booking Status Distribution
-- ==========================================================

SELECT
`Booking Status`,
COUNT(*) AS Total
FROM ola_rides
GROUP BY `Booking Status`;

-- ==========================================================
-- 9. Payment Method Usage
-- ==========================================================

SELECT
`Payment Method`,
COUNT(*) AS Total
FROM ola_rides
GROUP BY `Payment Method`
ORDER BY Total DESC;

-- ==========================================================
-- 10. Average Customer Rating
-- ==========================================================

SELECT AVG(`Customer Rating`) AS Avg_Customer_Rating
FROM ola_rides;

-- ==========================================================
-- 11. Average Driver Rating
-- ==========================================================

SELECT AVG(`Driver Rating`) AS Avg_Driver_Rating
FROM ola_rides;

-- ==========================================================
-- 12. Revenue by Payment Method
-- ==========================================================

SELECT
`Payment Method`,
SUM(`Booking Value`) AS Revenue
FROM ola_rides
GROUP BY `Payment Method`
ORDER BY Revenue DESC;

-- ==========================================================
-- 13. Top 10 Highest Fare Rides
-- ==========================================================

SELECT *
FROM ola_rides
ORDER BY `Booking Value` DESC
LIMIT 10;

-- ==========================================================
-- 14. Lowest Fare Rides
-- ==========================================================

SELECT *
FROM ola_rides
ORDER BY `Booking Value`
LIMIT 10;

-- ==========================================================
-- 15. Total Revenue by Month
-- ==========================================================

SELECT
Month,
SUM(`Booking Value`) AS Revenue
FROM ola_rides
GROUP BY Month;

-- ==========================================================
-- 16. Total Bookings by Month
-- ==========================================================

SELECT
Month,
COUNT(*) AS Total
FROM ola_rides
GROUP BY Month;

-- ==========================================================
-- 17. Revenue by Weather
-- ==========================================================

SELECT
Weather,
SUM(`Booking Value`) AS Revenue
FROM ola_rides
GROUP BY Weather;

-- ==========================================================
-- 18. Revenue by Traffic Condition
-- ==========================================================

SELECT
Traffic,
SUM(`Booking Value`) AS Revenue
FROM ola_rides
GROUP BY Traffic;

-- ==========================================================
-- 19. Average Ride Duration
-- ==========================================================

SELECT AVG(`Ride Duration`) AS Avg_Ride_Duration
FROM ola_rides;

-- ==========================================================
-- 20. Average Fare by Vehicle Type
-- ==========================================================

SELECT
`Vehicle Type`,
AVG(`Booking Value`) AS Avg_Fare
FROM ola_rides
GROUP BY `Vehicle Type`;

-- ==========================================================
-- 21. Customer Rating by City
-- ==========================================================

SELECT
City,
AVG(`Customer Rating`) AS Avg_Rating
FROM ola_rides
GROUP BY City;

-- ==========================================================
-- 22. Driver Rating by City
-- ==========================================================

SELECT
City,
AVG(`Driver Rating`) AS Avg_Driver_Rating
FROM ola_rides
GROUP BY City;

-- ==========================================================
-- 23. Revenue by Booking Status
-- ==========================================================

SELECT
`Booking Status`,
SUM(`Booking Value`) AS Revenue
FROM ola_rides
GROUP BY `Booking Status`;

-- ==========================================================
-- 24. Total Successful Rides
-- ==========================================================

SELECT COUNT(*) AS Successful_Rides
FROM ola_rides
WHERE `Booking Status`='Success';

-- ==========================================================
-- 25. Total Cancelled Rides
-- ==========================================================

SELECT COUNT(*) AS Cancelled_Rides
FROM ola_rides
WHERE `Booking Status` LIKE '%Cancel%';

-- ==========================================================
-- 26. Highest Revenue City
-- ==========================================================

SELECT
City,
SUM(`Booking Value`) Revenue
FROM ola_rides
GROUP BY City
ORDER BY Revenue DESC
LIMIT 1;

-- ==========================================================
-- 27. Highest Revenue Vehicle
-- ==========================================================

SELECT
`Vehicle Type`,
SUM(`Booking Value`) Revenue
FROM ola_rides
GROUP BY `Vehicle Type`
ORDER BY Revenue DESC
LIMIT 1;

-- ==========================================================
-- 28. Total Bookings per City
-- ==========================================================

SELECT
City,
COUNT(*) Total
FROM ola_rides
GROUP BY City;

-- ==========================================================
-- 29. Peak Booking Hour
-- ==========================================================

SELECT
Hour,
COUNT(*) Total
FROM ola_rides
GROUP BY Hour
ORDER BY Total DESC;

-- ==========================================================
-- 30. Total Revenue by Weekday
-- ==========================================================

SELECT
Weekday,
SUM(`Booking Value`) Revenue
FROM ola_rides
GROUP BY Weekday;

-- ==========================================================
-- 31. Average Fare per KM
-- ==========================================================

SELECT AVG(`Fare Per KM`) AS Avg_Fare_Per_KM
FROM ola_rides;

-- ==========================================================
-- 32. Revenue by Distance Category
-- ==========================================================

SELECT
`Distance Category`,
SUM(`Booking Value`) Revenue
FROM ola_rides
GROUP BY `Distance Category`;

-- ==========================================================
-- 33. Total Rides by Distance Category
-- ==========================================================

SELECT
`Distance Category`,
COUNT(*) Total
FROM ola_rides
GROUP BY `Distance Category`;

-- ==========================================================
-- 34. Average Fare by Weather
-- ==========================================================

SELECT
Weather,
AVG(`Booking Value`) Avg_Fare
FROM ola_rides
GROUP BY Weather;

-- ==========================================================
-- 35. Revenue by Peak Hour
-- ==========================================================

SELECT
`Peak Hour`,
SUM(`Booking Value`) Revenue
FROM ola_rides
GROUP BY `Peak Hour`;

-- ==========================================================
-- 36. Driver Rating by Vehicle Type
-- ==========================================================

SELECT
`Vehicle Type`,
AVG(`Driver Rating`) Avg_Driver_Rating
FROM ola_rides
GROUP BY `Vehicle Type`;

-- ==========================================================
-- 37. Customer Rating by Vehicle Type
-- ==========================================================

SELECT
`Vehicle Type`,
AVG(`Customer Rating`) Avg_Customer_Rating
FROM ola_rides
GROUP BY `Vehicle Type`;

-- ==========================================================
-- 38. Revenue by Booking Category
-- ==========================================================

SELECT
`Booking Category`,
SUM(`Booking Value`) Revenue
FROM ola_rides
GROUP BY `Booking Category`;

-- ==========================================================
-- 39. Top 5 Revenue Cities
-- ==========================================================

SELECT
City,
SUM(`Booking Value`) Revenue
FROM ola_rides
GROUP BY City
ORDER BY Revenue DESC
LIMIT 5;

-- ==========================================================
-- 40. Overall Business Summary
-- ==========================================================

SELECT
COUNT(*) AS Total_Rides,
SUM(`Booking Value`) AS Revenue,
AVG(`Booking Value`) AS Average_Fare,
AVG(`Customer Rating`) AS Customer_Rating,
AVG(`Driver Rating`) AS Driver_Rating
FROM ola_rides;