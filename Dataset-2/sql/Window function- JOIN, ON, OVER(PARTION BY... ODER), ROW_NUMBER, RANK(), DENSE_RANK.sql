-- Window FUNCTION

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics;

SELECT dem.first_name, dem.last_name, gender, AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
      ON dem.employee_id = sal.employee_id
GROUP BY dem.first_name, dem.last_name, gender;

SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER (PARTITION BY gender) 
FROM employee_demographics dem
JOIN employee_salary sal
      ON dem.employee_id = sal.employee_id;
      
SELECT dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER (PARTITION BY gender order by dem.employee_id) AS rolling_total 
FROM employee_demographics dem
JOIN employee_salary sal
      ON dem.employee_id = sal.employee_id;


SELECT DEM .EMPLOYEE_ID, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER( PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER( PARTITION BY gender ORDER BY salary DESC) rank_num,
DENSE_RANK() OVER( PARTITION BY gender ORDER BY salary DESC) DENSE_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
      ON dem.employee_id = sal.employee_id;
