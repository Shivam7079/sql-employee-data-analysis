-- Highest Salary Employee
SELECT emp_id, emp_name, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

-- Department-wise Salary Summary
SELECT d.dept_name,
       COUNT(*) AS headcount,
       MIN(e.salary) AS min_salary,
       ROUND(AVG(e.salary),0) AS avg_salary,
       MAX(e.salary) AS max_salary
FROM employees e
JOIN departments d ON d.dept_id = e.dept_id
GROUP BY d.dept_name
ORDER BY avg_salary DESC;

-- Overall Ranking
SELECT emp_id, emp_name, salary,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS overall_rank
FROM employees;

-- Department-wise Ranking
SELECT d.dept_name, e.emp_name, e.salary,
       DENSE_RANK() OVER (PARTITION BY e.dept_id ORDER BY e.salary DESC) AS dept_rank
FROM employees e
JOIN departments d ON d.dept_id = e.dept_id;

-- Employees Above Department Average
SELECT e.emp_id, e.emp_name, d.dept_name, e.salary
FROM employees e
JOIN departments d ON d.dept_id = e.dept_id
WHERE e.salary >
(
  SELECT AVG(e2.salary)
  FROM employees e2
  WHERE e2.dept_id = e.dept_id
);
