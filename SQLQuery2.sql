select * from [dbo].[df_orders]


---Q1.  Identify top 5 categories with most apps.----
SELECT TOP 5 Category, COUNT(App) AS AppCount
FROM [dbo].[df_orders]
GROUP BY Category
ORDER BY AppCount DESC;


----FREE VS PAID APP ANALYSIS----
----Q2. Compare average ratings between free and paid apps------
SELECT 
    Type, 
    AVG(Rating) AS AvgRating,
    AVG(CAST(Reviews AS BIGINT)) AS AvgReviews
FROM 
    [dbo].[df_orders]
WHERE 
    Reviews IS NOT NULL
    and Type is not null
GROUP BY 
    Type;


------Monthly App Release Trends-----
------Q3.Show app releases by month in 2018------
SELECT Month, COUNT(*) AS Releases
FROM [dbo].[df_orders]
WHERE Year = 2018
GROUP BY Month
ORDER BY Releases DESC;


-----Profitability-----
-----Q4 Which genres are most profitable?-----
SELECT
    Genres,
    SUM(CAST(REPLACE(Price, '$', '') AS FLOAT)) AS total_revenue
FROM [dbo].[df_orders]
WHERE Type = 'Paid'
GROUP BY Genres
ORDER BY total_revenue DESC;

-----Most Overrated Apps-----
----Q5. Find the apps with High Ratings but Low Installs-----
SELECT *
FROM (
    SELECT
        App,
        Rating,
        Installs,
        CASE
            WHEN Installs < 10000 AND Rating >= 4.5 THEN 'Overrated'
            ELSE 'Normal'
        END AS RatingType
    FROM [dbo].[df_orders]
    WHERE Rating IS NOT NULL AND Installs IS NOT NULL
) AS sub
WHERE RatingType = 'Overrated';


-----Q6.  Find the Average Rating and Installs for Free vs Paid Apps by Content Rating-----
SELECT
    [Content Rating],
    Type,
    AVG(Rating) AS avg_rating,
    AVG(CAST(Installs AS BIGINT)) AS avg_installs
FROM [dbo].[df_orders]
WHERE Rating IS NOT NULL AND Installs IS NOT NULL
GROUP BY [Content Rating], Type;


----Q7Analysize Apps with their Size and their Average Rating----
SELECT
    CASE 
        WHEN Size < 20 THEN 'Small'
        WHEN Size BETWEEN 20 AND 50 THEN 'Medium'
        ELSE 'Large'
    END AS SizeCategory,
    ROUND(AVG(Rating), 2) AS avg_rating
FROM [dbo].[df_orders]
WHERE Size IS NOT NULL AND Rating IS NOT NULL
GROUP BY 
    CASE 
        WHEN Size < 20 THEN 'Small'
        WHEN Size BETWEEN 20 AND 50 THEN 'Medium'
        ELSE 'Large'
    END;


-----Q8.Find the Product Market Fit Apss.------
SELECT App, Category, Rating, Installs, Reviews
FROM [dbo].[df_orders]
WHERE Type = 'Free' AND Rating > 4.5 AND Installs > 1000000 AND Reviews > 50000
Order By App;


-----Q9. Find High-Performing Free Apps with Exceptional User Engagement----
WITH FreeHighPerformingApps AS (
    SELECT
        App,
        Category,
        Rating,
        Installs,
        Reviews,
        CAST(Reviews AS FLOAT) / NULLIF(Installs, 0) AS EngagementRatio,
        DATEDIFF(DAY, CAST([Last Updated] AS DATE), GETDATE()) AS DaysSinceUpdate
    FROM [dbo].[df_orders]
    WHERE
        Type = 'Free'
        AND Rating > 4.5
        AND Installs > 1000000
        AND Reviews > 50000
)

SELECT
    App,
    Category,
    Rating,
    Installs,
    Reviews,
    ROUND(EngagementRatio, 4) AS EngagementRatio,
    DaysSinceUpdate
FROM FreeHighPerformingApps
ORDER BY EngagementRatio DESC;




---Q10. Identify Best Months to Launch Any App.-----
SELECT
    Month,
    COUNT(*) AS apps_launched,
    ROUND(AVG(Rating), 2) AS avg_rating
FROM [dbo].[df_orders]
WHERE Rating IS NOT NULL
GROUP BY Month
ORDER BY avg_rating DESC;



----Q11.Identify Risky App Categories (High Count of Low Rated Apps)---
SELECT
    Category,
    COUNT(*) AS total_apps,
    SUM(CASE WHEN Rating < 3 THEN 1 ELSE 0 END) AS low_rated_count,
    ROUND(100.0 * SUM(CASE WHEN Rating < 3 THEN 1 ELSE 0 END)/COUNT(*), 2) AS low_rating_percentage
FROM [dbo].[df_orders]
WHERE Rating IS NOT NULL
GROUP BY Category
ORDER BY low_rating_percentage DESC;



 


