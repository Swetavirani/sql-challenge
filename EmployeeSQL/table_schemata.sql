
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Create a new table
create table departments(
    dept_no varchar(10) NOT NULL,
    dept_name varchar(50) NOT NULL,
    PRIMARY KEY (dept_no)
    );

-- View the table data
SELECT * from departments;

-- Create a new table
create table titles(
    title_id varchar NOT NULL,
    title varchar(25) NOT NULL,
    PRIMARY KEY (title_id)
    );

-- View the table data
SELECT * from titles;

-- Create a new table
create table employees(
    emp_no int NOT NULL,
    emp_title_id varchar(25) NOT NULL,
    birth_date date NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    sex varchar(1) NOT NULL,
    hire_date date NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
    );

-- View the table data
SELECT * from employees;

-- Create a new table
create table dept_emp(
    emp_no int NOT NULL,
    dept_no varchar(10) NOT NULL,
	primary key (dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
    );

-- View the table data
SELECT * from dept_emp;

-- Create a new table
create table dept_manager(
    dept_no varchar(10) NOT NULL,
    emp_no int NOT NULL,
	primary key (dept_no,emp_no),
     FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
     );

-- View the table data
SELECT * from dept_manager;

-- Create a new table
create table salaries(
    emp_no int NOT NULL,
    salary  int NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
    );

-- View the table data
SELECT * from salaries;
















