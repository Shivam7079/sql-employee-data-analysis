CREATE INDEX idx_emp_dept ON employees(dept_id);
CREATE INDEX idx_emp_salary ON employees(salary);
CREATE INDEX idx_emp_hiredate ON employees(hire_date);
CREATE INDEX idx_emp_manager ON employees(manager_id);

EXPLAIN
SELECT d.dept_name,
       COUNT(*) AS headcount,
       ROUND(AVG(e.salary),0) AS avg_salary
FROM employees e
JOIN departments d ON d.dept_id = e.dept_id
GROUP BY d.dept_name;
