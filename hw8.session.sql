SELECT
    Region,
    SUM(CASE WHEN `Income Group` = 'High income' THEN 1 ELSE 0 END) AS High_Income,
    SUM(CASE WHEN `Income Group` = 'Upper middle income' THEN 1 ELSE 0 END) AS Upper_Middle_Income,
    SUM(CASE WHEN `Income Group` = 'Lower middle income' THEN 1 ELSE 0 END) AS Lower_Middle_Income,
    SUM(CASE WHEN `Income Group` = 'Low income' THEN 1 ELSE 0 END) AS Low_Income,
    SUM(CASE WHEN `Income Group` IS NULL OR 
              (`Income Group` NOT IN ('High income', 'Upper middle income', 'Lower middle income', 'Low income'))
         THEN 1 ELSE 0 END) AS Other,
    COUNT(*) * 1.0 AS Total_Countries
FROM
    WDI_country
GROUP BY
    Region
ORDER BY
    Region;