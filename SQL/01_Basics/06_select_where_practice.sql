SELECT * FROM ex2_employees ;

SELECT emp_name, email FROM ex2_employees;

SELECT * FROM ex2_employees
ORDER BY salary DESC;

SELECT * FROM ex2_employees
ORDER BY salary DESC
LIMIT 1;

SELECT * FROM ex2_employees
WHERE emp_name LIKE 'A%';