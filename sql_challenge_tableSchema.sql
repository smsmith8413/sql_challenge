--*Altered tables after data import to assign/create primary keys, see below (beneath table creation)

--Create departments table
CREATE TABLE departments (
    dept_no varchar NOT NULL,
    dept_name varchar NOT NULL
);


--Create dept_emp table
CREATE TABLE dept_emp (
    emp_no varchar NOT NULL,
    dept_no varchar NOT NULL,
    emp_start_date date NOT NULL,
    emp_end_date date NOT NULL
);

--Create dept_manager table
--*dep_no should be relabled as "dept_no" to match other tables (to reduce confusion when referencing)
CREATE TABLE dept_manager (
    dep_no varchar NOT NULL,
    emp_no varchar NOT NULL,
    mgr_from_date date NOT NULL,
    mgr_to_date date NOT NULL,
    manager_id integer NOT NULL
);

--Create employees table
CREATE TABLE employees (
    emp_no varchar NOT NULL,
    birthdate date NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    gender varchar NOT NULL,
    hire_date date NOT NULL
);

--Create salaries table
CREATE TABLE salaries (
    emp_no varchar NOT NULL,
    salary integer NOT NULL,
    salary_start_date date NOT NULL,
    salary_end_date date NOT NULL,
    salary_id integer NOT NULL
);

--Create titles table
CREATE TABLE titles (
    emp_no varchar NOT NULL,
    title varchar NOT NULL,
    title_start_date date NOT NULL,
    title_end_date date NOT NULL,
    title_id integer NOT NULL
);

--add primary key to dept_manager table
ALTER TABLE dept_manager
ADD COLUMN manager_id SERIAL Primary Key

--add primary key to salaries table
ALTER TABLE salaries
ADD COLUMN salay_id SERIAL Primary Key

--add primary key to titles table
ALTER TABLE titles
ADD COLUMN title_id SERIAL Primary Key

--assign primary key to departments table
ALTER TABLE ONLY departments
    ADD CONSTRAINT departments_pk PRIMARY KEY (dept_no)

--assign primary key to employees table
ALTER TABLE ONLY employees
    ADD CONSTRAINT employees_pk PRIMARY KEY (emp_no);

--assign primary key to dept_emp table using 2 columns 
ALTER TABLE ONLY dept_emp
    ADD CONSTRAINT dept_emp_pk PRIMARY KEY (dept_no, emp_no);