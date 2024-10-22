SELECT 
    country.entity,
    country.code,
    AVG(disease_cases.number_rabies) AS avg_rabies,
    MIN(disease_cases.number_rabies) AS min_rabies,
    MAX(disease_cases.number_rabies) AS max_rabies,
    SUM(disease_cases.number_rabies) AS sum_rabies
FROM 
    Disease_Cases disease_cases
JOIN 
    Country country ON disease_cases.country_id = country.country_id
WHERE 
    disease_cases.number_rabies IS NOT NULL
GROUP BY 
    country.entity, country.code
ORDER BY 
    avg_rabies DESC
LIMIT 10;
