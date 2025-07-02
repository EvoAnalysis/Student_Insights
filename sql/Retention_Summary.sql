-- Retention and Graduation Summary
SELECT
    Year,
    Value_Type,
    ROUND(AVG(Percentage), 4) AS Avg_Percentage
FROM clean_retention
GROUP BY Year, Value_Type
ORDER BY Year, Value_Type;