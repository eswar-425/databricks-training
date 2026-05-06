--Question - 1
SELECT * FROM Employee;

--Question - 2
SELECT name,salary FROM Employee;

--Question - 3
SELECT name FROM Employee
WHERE age > 30;

--Question - 4
SELECT name FROM Department;

--Question - 5
SELECT name FROM Employee
WHERE department_id == 1;

--Question - 6
SELECT name FROM Employee
WHERE name LIKE "J%";

--Question - 7
SELECT name FROM Employee
WHERE name LIKE "%e";

--Question - 8
SELECT name FROM Employee
WHERE name LIKE "%a%";

--Question - 9
SELECT name FROM Employee
WHERE name LIKE "_________";

--Question - 10
SELECT name FROM Employee
WHERE name LIKE "_a%";

--Question - 11
SELECT name FROM Employee
WHERE strftime("%Y", hire_date) == "2020";

--Question - 12
SELECT name FROM Employee
WHERE strftime("%m", hire_date) == "01";

--Question - 13
SELECT name FROM Employee
WHERE CAST(strftime("%Y", hire_date) AS INTEGER) < 2019;

--Question - 14
SELECT name FROM Employee
WHERE CAST(strftime("%Y%m%d", hire_date) AS INTEGER) >= 20210301;

--Question - 15
SELECT name FROM Employee
WHERE hire_date > date('now','-2 years');

--Question - 16
SELECT SUM(salary) AS total_salary FROM Employee;

--Question - 17
SELECT AVG(salary) AS Average_Salary FROM Employee;

--Question - 18
SELECT MIN(salary) AS MIN_Salary FROM Employee;

--Question - 19
SELECT department_id, COUNT(emp_id) as Employee_Count FROM Employee
GROUP BY department_id;

--Question - 20
SELECT department_id, AVG(salary) FROM Employee
GROUP BY department_id;

--Question - 21
SELECT department_id, SUM(salary) FROM Employee
GROUP BY department_id;

--Question - 22
SELECT department_id, AVG(age) FROM Employee
GROUP BY department_id;

--Question - 23
SELECT strftime("%Y",hire_date) AS Year, COUNT(emp_id) FROM Employee
GROUP BY strftime("%Y", hire_date);

--Question - 24
SELECT department_id, MAX(salary) AS MAX_salary FROM Employee
GROUP BY department_id;

--Question - 25
SELECT department_id, AVG(salary) AS AVG_salary FROM Employee
GROUP BY department_id
ORDER BY AVG_salary DESC
LIMIT 1;

--Question - 26
SELECT department_id, COUNT(emp_id) as Employee_Count FROM Employee
GROUP BY department_id
HAVING Employee_Count > 2;

--Question - 27
SELECT department_id, AVG(salary) AS AVG_salary FROM Employee
GROUP BY department_id
HAVING AVG_salary > 55000;

--Question - 28
SELECT strftime("%Y",hire_date) AS YEAR, COUNT(emp_id) as emp_count FROM Employee
GROUP BY strftime("%Y", hire_date)
HAVING emp_count > 1;

--Question - 29
SELECT department_id, SUM(salary) AS total_salary FROM Employee
GROUP BY department_id
HAVING total_salary < 100000;

--Question - 30
SELECT department_id, MAX(salary) AS MAX_salary FROM Employee
GROUP BY department_id
HAVING MAX_salary > 75000;

--Question - 31
SELECT name, salary FROM Employee
ORDER BY salary;

--Question - 32
SELECT name, age FROM Employee
ORDER BY age DESC;

--Question - 33
SELECT name , hire_date FROM Employee
ORDER BY hire_date;

--Question - 34
SELECT name, department_id,salary FROM Employee
ORDER BY department_id, salary;

--Question - 35
SELECT department_id, SUM(salary) AS total_salary FROM Employee
GROUP BY department_id
ORDER BY total_salary;

--Question - 36
SELECT Employee.name as employee_name, Department.name as department_name FROM Employee INNER JOIN Department
ON Employee.department_id == Department.department_id;

--Question - 37
SELECT Project.name AS project_name, department.name AS department_name FROM Project INNER JOIN Department
ON Project.department_id == Department.department_id;

--Question - 38
SELECT Employee.name AS employee_name, Project.name FROM Employee INNER JOIN Project
ON Employee.department_id == Project.department_id;

--Question - 39
SELECT Employee.name AS employee_name, Department.name AS department_name
FROM Employee LEFT JOIN Department
ON Employee.department_id == Department.department_id;

--Question - 40
SELECT Department.name AS department_name, Employee.name AS employee_name
FROM Department LEFT JOIN Employee 
ON Department.department_id == Employee.department_id;

--Question - 41
SELECT Employee.name AS employee_name FROM Employee LEFT JOIN Project
ON Employee.department_id == Project.department_id
WHERE Project.project_id IS NULL;

--Question - 42
SELECT Employee.name AS employee_name, Employee.department_id AS department_name, COUNT(Project.name) AS project_count
FROM Employee INNER JOIN Project
ON Employee.department_id == Project.department_id
GROUP BY Employee.name;

--Question - 43
SELECT Department.department_id, Department.name FROM Department LEFT JOIN Employee
ON Department.department_id == Employee.department_id
WHERE Employee.emp_id IS NULL;

--Question - 44
SELECT name FROM Employee
WHERE department_id == (SELECT department_id FROM Employee WHERE name == "John Doe");

--Question - 45
SELECT Department.name, AVG(Employee.salary) AS avg_salary FROM Department LEFT JOIN Employee
ON Department.department_id == Employee.department_id
GROUP BY Department.department_id
ORDER BY avg_salary DESC
LIMIT 1;

--Question - 46
SELECT name FROM Employee
WHERE salary == (SELECT MAX(salary) FROM Employee);

--Question - 47
SELECT name FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);

--Question - 48
SELECT salary FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee)
ORDER BY salary DESC
LIMIT 1;

--Question - 49
SELECT department_id, COUNT(emp_id) AS employee_count FROM Employee
GROUP BY department_id
ORDER BY employee_count DESC
LIMIT 1;

--Question - 50
SELECT name FROM Employee
WHERE salary > (SELECT AVG(Employee.salary) FROM Department LEFT JOIN Employee
ON Department.department_id == Employee.department_id
GROUP BY Department.department_id);

--Question - 51
SELECT salary FROM Employee
WHERE salary == (SELECT salary FROM Employee ORDER BY salary DESC LIMIT 1 OFFSET 2); --for example 3rd highest

--Question - 52
SELECT name FROM Employee
WHERE age < (SELECT Employee.age FROM Department LEFT JOIN Employee ON Department.department_id == Employee.department_id WHERE Department.name == "HR");

--Question - 53
SELECT Department.name, AVG(Employee.salary) AS avg_salary FROM Department LEFT JOIN Employee ON Department.department_id == Employee.department_id
GROUP BY Employee.department_id
HAVING avg_salary > 55000;

--Question - 54
SELECT Employee.name AS employee_name, Employee.department_id AS department_name, COUNT(Project.name) AS project_count
FROM Employee INNER JOIN Project
ON Employee.department_id == Project.department_id
GROUP BY Employee.name
HAVING project_count >= 2;

--Question - 55
SELECT name FROM Employee
WHERE hire_date == (SELECT hire_date FROM Employee WHERE name == "Jane Smith");