
CREATE DATABASE employee_analytics;
USE employee_analytics;

CREATE TABLE departments (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(60) NOT NULL,
  dept_id INT NOT NULL,
  salary INT NOT NULL,
  hire_date DATE NOT NULL,
  manager_id INT NULL,
  city VARCHAR(40),
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
