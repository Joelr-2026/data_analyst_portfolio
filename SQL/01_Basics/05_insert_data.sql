INSERT INTO ex2_employees (emp_name, email, salary) VALUES
    ('Amit Sharma', 'amit@email.com', 25000),
    ('Priya Gupta', 'priya@email.com', 32000),
    ('Raj Kumar', 'raj@email.com', 28000);

    SELECT * FROM ex2_employees;

UPDATE ex2_employees 
SET salary = 35000 
WHERE emp_name = 'Priya Gupta';

SELECT * FROM ex2_employees;

INSERT INTO ex2_employees(emp_name, email, salary) VALUES
    ('Sonia Verma', 'sonia@email.com', 40000);

SELECT * FROM ex2_employees;

DELETE FROM ex2_employees
WHERE emp_name = 'Sonia Verma';

SELECT * FROM ex2_employees;
