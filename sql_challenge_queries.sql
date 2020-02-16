--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from salaries s
join employees e
on e.emp_no = s.emp_no

--2. List employees who were hired in 1986.
select * 
from employees 
where hire_date between '1986-01-01' and '1986-12-31'

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select dm.dep_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.mgr_from_date, dm.mgr_to_date
from employees e
join dept_manager dm
on dm.emp_no = e.emp_no
left join departments d
on dm.dep_no = d.dept_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, e.gender, d.dept_name
FROM departments d
LEFT JOIN dept_emp
ON dept_emp.dept_no = d.dept_no
LEFT JOIN employees e
ON dept_emp.emp_no = e.emp_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
select emp_no, first_name, last_name 
from employees
where first_name = 'Hercules' AND last_name like 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d
LEFT JOIN dept_emp
ON dept_emp.dept_no = d.dept_no
LEFT JOIN employees e
ON dept_emp.emp_no = e.emp_no
Where d.dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d
LEFT JOIN dept_emp
ON dept_emp.dept_no = d.dept_no
LEFT JOIN employees e
ON dept_emp.emp_no = e.emp_no
Where d.dept_name = 'Sales' OR d.dept_name ='Development'

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(last_name) AS count_of_name FROM employees
GROUP BY last_name
ORDER BY count_of_name DESC

