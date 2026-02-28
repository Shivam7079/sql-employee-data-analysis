INSERT INTO departments (dept_id, dept_name) VALUES
(10,'HR'), (20,'IT'), (30,'Sales'), (40,'Finance');

INSERT INTO employees (emp_id, emp_name, dept_id, salary, hire_date, manager_id, city) VALUES
(101,'Amit',20,85000,'2022-01-10',NULL,'Bangalore'),
(102,'Neha',20,92000,'2021-08-05',101,'Bangalore'),
(103,'Rahul',30,60000,'2023-03-20',NULL,'Delhi'),
(104,'Pooja',30,75000,'2022-11-14',103,'Delhi'),
(105,'Kiran',10,50000,'2020-06-01',NULL,'Patna'),
(106,'Sana',10,65000,'2022-02-18',105,'Patna'),
(107,'Vikas',40,98000,'2019-09-09',NULL,'Mumbai'),
(108,'Riya',40,72000,'2023-01-22',107,'Mumbai'),
(109,'Arjun',20,54000,'2024-04-01',101,'Hyderabad'),
(110,'Meena',30,68000,'2021-12-30',103,'Kolkata');
