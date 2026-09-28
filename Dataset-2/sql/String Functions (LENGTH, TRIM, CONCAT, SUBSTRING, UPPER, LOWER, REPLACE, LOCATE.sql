-- String Functions

SELECT LENGTH('skyll');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

 SELECT UPPER('sky');
 SELECT LOWER('SKY');
 
 SELECT first_name, UPPER(first_name)
 FROM employee_demographics;
 
 SELECT RTRIM('              ANNYAHANSEO          ') AS White_space;
 
 SELECT first_name,
 LEFT (first_name, 4),
 RIGHT (first_name, 3),
 SUBSTRING(first_name, 3,2),
 birth_date,
 SUBSTRING(birth_date, 6,2) AS birth_month
 FROM employee_demographics;
 
 SELECT first_name, REPLACE(first_name, 'a', 'z')
 FROM employee_demographics;
 
 SELECT first_name, LOCATE('An', first_name)
 FROM employee_demographics;
 
 SELECT first_name, last_name,
 CONCAT(first_name,' ', last_name)
 FROM employee_demographics;