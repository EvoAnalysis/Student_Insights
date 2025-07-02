-- Enrollment by Year and Residency
SELECT
    Year,
    Residency,
    SUM(Headcount) AS Total_Students
FROM clean_enrollment
GROUP BY Year, Residency
ORDER BY Year, Residency;