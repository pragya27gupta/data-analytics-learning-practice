-- UNION

SELECT first_name, last_name
FROM employee_demographics
UNION distinct
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name, 'OLd Man' AS Lable
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'OLd Lady' AS Lable
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid' AS Lable
FROM employee_salary
WHERE salary > 70000 
ORDER BY first_name, last_name;

