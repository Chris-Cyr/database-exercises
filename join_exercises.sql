USE employees;
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees AS e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT d.dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
from employees as e
join dept_manager as dm
on dm.emp_no = e.emp_no
join departments as d
on d.dept_no = dm.dept_no
Where dm.to_date = '9999-01-01'
order by d.dept_name;

SELECT d.dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
from employees as e
join dept_manager as dm
on dm.emp_no = e.emp_no
join departments as d
on d.dept_no = dm.dept_no
Where dm.to_date = '9999-01-01'
AND e.gender = 'f'
order by d.dept_name;

select t.title AS 'Title', count(t.title) AS 'Count'
from titles t
join dept_emp de on de.emp_no = t.emp_no
where de.dept_no = 'd009'
  AND t.to_date > now()
  AND de.to_date > now()
group by t.title
order by t.title;

-- Find the current salary of all current managers.
/*
Department Name    | Name              | Salary
-------------------+-------------------+-------
Customer Service   | Yuchang Weedman   |  58745
Development        | Leon DasSarma     |  74510
Finance            | Isamu Legleitner  |  83457
Human Resources    | Karsten Sigstam   |  65400
Marketing          | Vishwani Minakawa | 106491
Production         | Oscar Ghazalie    |  56654
Quality Management | Dung Pesch        |  72876
Research           | Hilary Kambil     |  79393
Sales              | Hauke Zhang       | 101987
*/

select d.dept_name as 'Department Name',
CONCAT(e.first_name, ' ', e.last_name) AS 'Name',
s.salary as 'Salary'
from employees e
join salaries s on e.emp_no = s.emp_no
join dept_manager dm on e.emp_no = dm.emp_no
join departments d on dm.dept_no = d.dept_no
where dm.to_date > now()
  AND s.to_date > now()
order by d.dept_name;

select concat(e.first_name, ' ', e.last_name) AS 'Employee Name',
  d.dept_name AS 'Department Name',
  concat(m.first_name, ' ', m.last_name) AS 'Manager Name'
FROM employees e
  join dept_emp de on e.emp_no = de.emp_no
  join departments d on de.dept_no = d.dept_no
  join dept_manager dm on de.dept_no = dm.dept_no
  join employees m on dm.emp_no = m.emp_no
WHERE de.to_date > now()
  AND dm.to_date > now()
order by d.dept_name;
