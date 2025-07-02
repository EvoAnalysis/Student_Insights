-- Staff Trend by Role and Year
SELECT
    Year,
    Role,
    SUM(Staff_Count) AS Total_Staff
FROM clean_staff
GROUP BY Year, Role
ORDER BY Year, Role;