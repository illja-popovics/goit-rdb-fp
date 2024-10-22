INSERT INTO Country (entity, code)
SELECT DISTINCT Entity, Code
FROM infectious_cases
WHERE Entity IS NOT NULL AND Code IS NOT NULL;

INSERT INTO Disease_Cases (
    country_id, year, number_yaws, polio_cases, cases_guinea_worm, 
    number_rabies, number_malaria, number_hiv, number_tuberculosis, 
    number_smallpox, number_cholera_cases
)
SELECT 
    c.country_id,
    ic.Year,
    NULLIF(ic.Number_yaws, '') AS number_yaws,
    NULLIF(ic.polio_cases, '') AS polio_cases,
    NULLIF(ic.cases_guinea_worm, '') AS cases_guinea_worm,
    NULLIF(ic.Number_rabies, '') AS number_rabies,
    NULLIF(ic.Number_malaria, '') AS number_malaria,
    NULLIF(ic.Number_hiv, '') AS number_hiv,
    NULLIF(ic.Number_tuberculosis, '') AS number_tuberculosis,
    NULLIF(ic.Number_smallpox, '') AS number_smallpox,
    NULLIF(ic.Number_cholera_cases, '') AS number_cholera_cases
FROM 
    infectious_cases ic
JOIN 
    Country c ON ic.Entity = c.entity AND ic.Code = c.code;
