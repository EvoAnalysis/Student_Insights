-- Degree Completions by Program and Year
SELECT
    Year,
    Program,
    SUM(Degrees_Awarded) AS Total_Degrees
FROM clean_completions
GROUP BY Year, Program
ORDER BY Year, Program;