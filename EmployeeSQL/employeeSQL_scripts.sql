select employees.emp_no, first_name, last_name, sex, salary.salary
from employees
join salary
	on employees.emp_no=salary.emp_no;
	
	
select first_name, last_name, hire_date
from employees
where hire_date like '%/%/1986';


select employees.emp_no, first_name, last_name, ds.dept_no, ds.dept_name
from employees
join
	(select emp_no, d.dept_no, d.dept_name
	from dept_manager
	join
		(select *
		from departments) as d
	on d.dept_no = dept_manager.dept_no) as ds
on employees.emp_no = ds.emp_no


select de.first_name, de.last_name, de.emp_no, dept_name
from departments
join
	(select dept_no, e.emp_no, e.first_name, e.last_name
	from dept_emp
	join
		(select emp_no, first_name, last_name
		from employees) as e
	on e.emp_no = dept_emp.emp_no) as de
on de.dept_no = departments.dept_no;


select first_name, last_name, sex
from employees
where first_name='Hercules'
and last_name like 'B%';


select sales_emp.emp_no, first_name, last_name, sales_emp.dept_name
from employees
join
	(select emp_no, sales.dept_name
	from dept_emp
	join
		(select *
		from departments
		where dept_name = 'Sales') as sales
	on dept_emp.dept_no = sales.dept_no) as sales_emp
on sales_emp.emp_no = employees.emp_no;


select sd_emp.emp_no, first_name, last_name, sd_emp.dept_name
from employees
join
	(select emp_no, sd.dept_name
	from dept_emp
	join
		(select *
		from departments
		where dept_name = 'Sales'
		or dept_name = 'Development') as sd
	on dept_emp.dept_no = sd.dept_no) as sd_emp
on sd_emp.emp_no = employees.emp_no;


select last_name, count(*)
from employees
group by last_name
order by count desc;