DROP TABLE departments; 
DROP TABLE dept_emp;
DROP TABLE dept_manager; 
DROP TABLE employees; 
DROP TABLE salaries;
DROP TABLE titles;

CREATE TABLE departments (
  	dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
  	dept_name VARCHAR(10) NOT NULL
);


CREATE TABLE dept_emp (
  	emp_no VARCHAR(10) NOT NULL,
  	dept_no VARCHAR(10) NOT NULL
);
ALTER TABLE dept_emp ADD PRIMARY KEY (emp_no)
ALTER TABLE dept_emp ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no)



CREATE TABLE dept_manager (
  	dept_no VARCHAR(10) NOT NULL,
	emp_no VARCHAR(10) NOT NULL
);
ALTER TABLE dept_manager ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
ALTER TABLE dept_manager ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no)



CREATE TABLE employees (
  	emp_no VARCHAR(10) NOT NULL,
  	emp_title_id VARCHAR(10) NOT NULL,
  	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(2),
	hire_date DATE
);

ALTER TABLE employees ADD PRIMARY KEY (emp_no)
ALTER TABLE employees ADD FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)



CREATE TABLE salaries (
  	emp_no VARCHAR(10) NOT NULL PRIMARY KEY,
  	salary int NOT NULL
);
ALTER TABLE salaries ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no)



CREATE TABLE titles (
  	title_id VARCHAR(10) NOT NULL,
  	title VARCHAR(50) NOT NULL
);
ALTER TABLE titles ADD PRIMARY KEY (title_id)
