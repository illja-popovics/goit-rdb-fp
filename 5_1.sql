DELIMITER //

CREATE FUNCTION calculate_year_diff(input_year INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE year_diff INT;
    
    SET year_diff = TIMESTAMPDIFF(YEAR, STR_TO_DATE(CONCAT(input_year, '-01-01'), '%Y-%m-%d'), CURDATE());
    
    RETURN year_diff;
END //

DELIMITER ;
