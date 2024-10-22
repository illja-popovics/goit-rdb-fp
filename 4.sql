SELECT 
    year, 
    STR_TO_DATE(CONCAT(year, '-01-01'), '%Y-%m-%d') AS year_start_date,
    CURDATE() AS current_date,
    TIMESTAMPDIFF(YEAR, STR_TO_DATE(CONCAT(year, '-01-01'), '%Y-%m-%d'), CURDATE()) AS year_diff
FROM 
    Disease_Cases;
