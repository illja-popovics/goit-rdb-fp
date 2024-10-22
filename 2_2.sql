CREATE TABLE Country (
    country_id SERIAL PRIMARY KEY,
    entity VARCHAR(255),
    code VARCHAR(10)
);


CREATE TABLE Disease_Cases (
    case_id SERIAL PRIMARY KEY,
    country_id INT REFERENCES Country(country_id),
    year INT,
    number_yaws FLOAT,
    polio_cases FLOAT,
    cases_guinea_worm FLOAT,
    number_rabies FLOAT,
    number_malaria FLOAT,
    number_hiv FLOAT,
    number_tuberculosis FLOAT,
    number_smallpox FLOAT,
    number_cholera_cases FLOAT
);
