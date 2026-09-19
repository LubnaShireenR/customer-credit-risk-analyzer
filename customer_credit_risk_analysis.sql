CREATE DATABASE credit_risk_db;
USE credit_risk_db;

CREATE TABLE credit_risk (
    person_age INT,
    person_income BIGINT,
    person_home_ownership VARCHAR(20),
    person_emp_length DECIMAL(5,2),
    loan_intent VARCHAR(30),
    loan_grade VARCHAR(5),
    loan_amnt INT,
    loan_int_rate DECIMAL(5,2),
    loan_status INT,
    loan_percent_income DECIMAL(5,3),
    cb_person_default_on_file VARCHAR(5),
    cb_person_cred_hist_length INT,
    age_group VARCHAR(20),
    income_group VARCHAR(20),
    loan_amount_group VARCHAR(20),
    employment_group VARCHAR(20)
);

USE credit_risk_db;
SELECT COUNT(*) AS total_loans
FROM credit_risk;

USE credit_risk_db;
TRUNCATE TABLE credit_risk;

SELECT COUNT(*) AS total_loans
FROM credit_risk;
SHOW VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = ON;

LOAD DATA LOCAL INFILE 'C:/Users/lubna shireen/OneDrive/Documents/Lubna Work/Projects/Customer Credit Risk Analyzer/credit_risk_cleaned.csv'
INTO TABLE credit_risk
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) AS total_loans
FROM credit_risk;

USE credit_risk_db;
LOAD DATA LOCAL INFILE 'C:/Users/lubna shireen/OneDrive/Documents/Lubna Work/Projects/Customer Credit Risk Analyzer/credit_risk_cleaned.csv'
INTO TABLE credit_risk
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) AS total_loans
FROM credit_risk;

USE credit_risk_db;
TRUNCATE TABLE credit_risk;

SELECT COUNT(*) AS total_loans
FROM credit_risk;

LOAD DATA LOCAL INFILE 'C:/Users/lubna shireen/OneDrive/Documents/Lubna Work/Projects/Customer Credit Risk Analyzer/credit_risk_cleaned.csv'
INTO TABLE credit_risk
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) AS total_loans
FROM credit_risk;

SELECT 
    ROUND(AVG(loan_status) * 100, 2) AS default_rate
FROM credit_risk;

SELECT
    loan_grade,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_status) * 100, 2) AS default_rate
FROM credit_risk
GROUP BY loan_grade
ORDER BY loan_grade;

SELECT
    loan_intent,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_status) * 100, 2) AS default_rate
FROM credit_risk
GROUP BY loan_intent
ORDER BY default_rate DESC;

SELECT
    person_home_ownership,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_status) * 100, 2) AS default_rate
FROM credit_risk
GROUP BY person_home_ownership
ORDER BY default_rate DESC;

SELECT
    cb_person_default_on_file,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_status) * 100, 2) AS default_rate
FROM credit_risk
GROUP BY cb_person_default_on_file
ORDER BY default_rate DESC;

SELECT
    income_group,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_status) * 100, 2) AS default_rate
FROM credit_risk
GROUP BY income_group
ORDER BY default_rate DESC;

SELECT
    loan_amount_group,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_status) * 100, 2) AS default_rate
FROM credit_risk
GROUP BY loan_amount_group
ORDER BY default_rate DESC;

SELECT
    loan_status,
    COUNT(*) AS total_loans,
    ROUND(AVG(person_income), 2) AS average_income
FROM credit_risk
GROUP BY loan_status
ORDER BY loan_status;

SELECT
    loan_status,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_amnt), 2) AS average_loan_amount
FROM credit_risk
GROUP BY loan_status
ORDER BY loan_status;

SELECT
    loan_status,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_int_rate), 2) AS average_interest_rate
FROM credit_risk
GROUP BY loan_status
ORDER BY loan_status;

SELECT
    employment_group,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_status) * 100, 2) AS default_rate
FROM credit_risk
GROUP BY employment_group
ORDER BY default_rate DESC;

SELECT
    loan_status,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_percent_income), 3) AS average_loan_percent_income
FROM credit_risk
GROUP BY loan_status
ORDER BY loan_status;

SELECT
    person_age,
    person_income,
    loan_grade,
    loan_amnt,
    loan_int_rate,
    loan_status,
    cb_person_default_on_file
FROM credit_risk
WHERE loan_grade IN ('F', 'G')
  AND cb_person_default_on_file = 'Y'
ORDER BY loan_int_rate DESC;

SELECT
    age_group,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_status) * 100, 2) AS default_rate
FROM credit_risk
GROUP BY age_group
ORDER BY default_rate DESC;

SELECT
    loan_grade,
    cb_person_default_on_file,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_status) * 100, 2) AS default_rate,
    ROUND(AVG(loan_percent_income), 3) AS avg_loan_percent_income
FROM credit_risk
WHERE loan_grade IN ('D', 'E', 'F', 'G')
  AND cb_person_default_on_file = 'Y'
  AND loan_percent_income >= 0.30
GROUP BY loan_grade, cb_person_default_on_file
ORDER BY default_rate DESC;

SELECT
    COUNT(*) AS total_loans,
    SUM(loan_status) AS defaulted_loans,
    COUNT(*) - SUM(loan_status) AS non_defaulted_loans,
    ROUND(AVG(loan_status) * 100, 2) AS overall_default_rate,
    ROUND(AVG(person_income), 2) AS average_income,
    ROUND(AVG(loan_amnt), 2) AS average_loan_amount,
    ROUND(AVG(loan_int_rate), 2) AS average_interest_rate,
    ROUND(AVG(loan_percent_income), 3) AS average_loan_percent_income
FROM credit_risk;

SELECT COUNT(*) AS total_rows
FROM credit_risk;

SELECT *
FROM credit_risk
LIMIT 5;