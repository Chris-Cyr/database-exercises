USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%E' GROUP BY last_name;

SELECT DISTINCT first_name,last_name FROM employees WHERE last_name LIKE 'E%E';

SELECT COUNT(DISTINCT last_name) FROM (SELECT * FROM employees WHERE last_name LIKE '%q%') AS t1 WHERE last_name NOT LIKE '%qu%';

SELECT gender, COUNT(*)
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
GROUP BY gender;
