CREATE DATABASE hr_analytics;

USE hr_analytics;

SHOW TABLES;

SELECT * FROM hr_cleaned
LIMIT 5;

SELECT COUNT(*) AS Total_Employees
FROM hr_cleaned;

# How many employees left the company?
SELECT COUNT(*) AS Attrition_Count
FROM hr_cleaned
WHERE Attrition = 'Yes';

# What percentage of employees left the company?
SELECT
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM hr_cleaned;

# How many employees are there in each department?
SELECT
    Department,
    COUNT(*) AS Total_Employees
FROM hr_cleaned
GROUP BY Department
ORDER BY Total_Employees DESC;

# How many employees left from each department?
SELECT
    Department,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_cleaned
GROUP BY Department
ORDER BY Attrition_Count DESC;

# How many employees work overtime, and how many of them left the company?
SELECT
    OverTime,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_cleaned
GROUP BY OverTime;

# Which job roles have the highest employee attrition?
SELECT
    JobRole,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_cleaned
GROUP BY JobRole
ORDER BY Attrition_Count DESC;

# What is the average monthly income in each department?
SELECT
    Department,
    ROUND(AVG(MonthlyIncome), 2) AS Average_Monthly_Income
FROM hr_cleaned
GROUP BY Department
ORDER BY Average_Monthly_Income DESC;