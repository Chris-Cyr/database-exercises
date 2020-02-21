USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name,first_name;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC ;

SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' ORDER BY birth_date,hire_date;

SELECT * FROM employees WHERE birth_date LIKE '%-12-25';

SELECT * FROM employees WHERE last_name LIKE '%q%';

######################

SELECT COUNT(*) FROM employees
WHERE first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya';

SELECT * FROM employees
WHERE (first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya')
  AND gender = 'M';

SELECT * FROM employees WHERE (last_name LIKE 'E%') OR (last_name LIKE '%E');

SELECT CONCAT(first_name,' ',last_name)  FROM employees WHERE last_name LIKE 'E%E';

SELECT DATEDIFF(curdate(),hire_date)  FROM employees WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
    AND birth_date LIKE '%-12-25';

SELECT * FROM (SELECT * FROM employees WHERE last_name LIKE '%q%') AS t1 WHERE last_name NOT LIKE '%qu%';