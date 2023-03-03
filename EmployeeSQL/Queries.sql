-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex , s.salary
from employees as e
left join salaries as s on e.emp_no= s.emp_no

-- List first name, last name, and hire date for employees who were hired in 1986.
select  first_name, last_name, hire_date
from employees
where hire_date between '1986/01/01' and '1986/12/31'

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select depman.dept_no, dep.dept_name, depman.emp_no, e.first_name, e.last_name
from dept_manager as depman
inner join departments as dep
on depman.dept_no = dep.dept_no
inner join employees as e
on depman.emp_no = e.emp_no

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select  e.emp_no, e.last_name, e.first_name, dep.dept_name
from employees as e
inner join dept_emp as depemp
on e.emp_no = depemp.emp_no
inner join departments as dep
on depemp.dept_no = dep.dept_no

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees 
where
	first_name = 'Hercules' and last_name like 'B%'
	
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, dep.dept_name
from employees as e
inner join dept_emp as depemp
on e.emp_no = depemp.emp_no
inner join departments as dep
on depemp.dept_no = dep.dept_no
where dep.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, dep.dept_name
from employees as e
inner join dept_emp as depemp
on e.emp_no = depemp.emp_no
inner join departments as dep
on depemp.dept_no = dep.dept_no
where dep.dept_name in ('Sales','Development')

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(*)
FROM employees
Group by last_name
ORDER BY count(*) DESC