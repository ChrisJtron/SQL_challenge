create table employees (
emp_no integer primary key,
emp_title_id varchar(10),
birthdate varchar(15),
first_name varchar(20),
last_name varchar(20),
sex varchar(2),
hire_date varchar(15)
);

create table dept_emp(
emp_no integer,
dept_no varchar(10)
);

create table departments(
dept_no varchar(10) primary key,
dept_name varchar(20)
);

create table dept_manager(
dept_no varchar(10),
emp_no integer
);

create table salary(
emp_no integer,
salary integer
);

create table titles(
title_id varchar(15),
title varchar(20)
);
select * from titles