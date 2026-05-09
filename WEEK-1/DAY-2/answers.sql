--SELECT
SELECT * FROM Employees;
SELECT emp_name, salary FROM Employees;
SELECT emp_name, department FROM Employees;
SELECT emp_name FROM Employees
WHERE department = "IT";
SELECT emp_name, experience FROM Employees;

--WHERE
--1
SELECT * FROM Employees WHERE salary > 70000;
--2
SELECT * FROM Employees WHERE city = "Hyderabad";
--3
SELECT * FROM Employees WHERE experience < 4;
--4
SELECT * FROM Employees WHERE department = "Finance";
--5
SELECT * FROM Employees WHERE salary = 52000;

--GROUP BY
--1
SELECT department, SUM(salary) AS total_salary FROM Employees
GROUP BY department;
--2
SELECT department, AVG(salary) AS avg_salary FROM Employees
GROUP BY department;
--3
SELECT city, COUNT(emp_id) as emp_count FROM Employees
GROUP BY city;
--4
SELECT department, MAX(salary) AS max_salary FROM Employees
GROUP BY department;
--5
SELECT department, MIN(experience) AS min_experience FROM Employees
GROUP BY department;

--HAVING
--1
SELECT department, COUNT(emp_id) as emp_count FROM Employees
GROUP BY department HAVING emp_count > 3;
--2
SELECT department, AVG(salary) AS avg_salary FROM Employees
GROUP BY department HAVING avg_salary > 60000;
--3
SELECT city, COUNT(emp_id) as emp_count FROM Employees
GROUP BY city HAVING emp_count > 2;
--4
SELECT department, SUM(salary) AS total_salary FROM Employees
GROUP BY department HAVING total_salary > 200000;
--5
SELECT department, MAX(salary) AS max_salary FROM Employees
GROUP BY department HAVING max_salary > 90000;

--TOP
--1
SELECT emp_name,salary FROM Employees
ORDER BY salary DESC
LIMIT 5;
--2
SELECT emp_name,experience FROM Employees
ORDER BY experience DESC
LIMIT 3;
--3
SELECT salary,department FROM Employees
WHERE department = "Finance"
ORDER BY salary DESC
LIMIT 2;
--4
SELECT emp_name, city FROM Employees
WHERE city = "Hyderabad"
ORDER BY salary DESC
LIMIT 4;
--5
SELECT emp_name, MAX(salary) AS max_salary FROM Employees;

--DISTINCT
--1
SELECT DISTINCT(department) FROM Employees;
--2
SELECT DISTINCT(city) FROM Employees;
--3
SELECT DISTINCT department ,city FROM Employees;
--4
SELECT DISTINCT(salary) FROM Employees;
--5
SELECT DISTINCT(department) FROM Employees;

--COMPARISON OPERATORS
--1
SELECT emp_name, salary FROM Employees
WHERE salary >= 80000;
--2
SELECT emp_name,experience FROM Employees
WHERE experience <= 3;
--3
SELECT emp_name, salary FROM Employees
WHERE experience <> 45000;
--4
SELECT emp_name, salary FROM Employees
WHERE salary < 50000;
--5
SELECT emp_name, experience FROM Employees
WHERE experience > 5;

--LOGICAL OPERATORS
--1
SELECT emp_name,department,salary FROM Employees
WHERE department = "IT" AND salary > 70000;
--2
SELECT emp_name,city FROM Employees
WHERE city = "Bangalore" OR "Hyderabad"; 
--3
SELECT emp_name, department FROM Employees
WHERE department = "HR" AND experience < 3;
--4
SELECT emp_name,salary,experience FROM Employees
WHERE salary > 60000 OR experience > 6;
--5
SELECT emp_name, department FROM Employees
WHERE NOT department = "Sales";

--IN AND NOT IN
--1
SELECT emp_name, city FROM Employees
WHERE city IN ("Hyderabad","Mumbai");
--2
SELECT emp_name, department FROM Employees
WHERE department IN ("IT","Finance");
--3
SELECT emp_name, city FROM Employees
WHERE city NOT IN ("Chennai","Pune");
--4
SELECT emp_name, salary FROM Employees
WHERE salary IN (45000,75000,91000);
--5
SELECT emp_name, department FROM Employees
WHERE department NOT IN ("HR","Sales");

--BETWEEN
--1
SELECT emp_name, salary FROM Employees
WHERE salary BETWEEN 50000 AND 80000;
--2
SELECT emp_name, experience FROM Employees
WHERE experience BETWEEN 3 AND 6;
--3
SELECT emp_name, emp_id FROM Employees
WHERE emp_id BETWEEN 105 AND 112;
--4
SELECT emp_name, salary FROM Employees
WHERE NOT salary BETWEEN 40000 AND 60000;
--5
SELECT emp_name, experience FROM Employees
WHERE experience BETWEEN 2 AND 4;

--LIKE OPERATOR
--1
SELECT emp_name FROM Employees
WHERE emp_name LIKE "R%";
--2
SELECT emp_name FROM Employees
WHERE emp_name LIKE "%a";
--3
SELECT emp_name FROM Employees
WHERE emp_name LIKE "%v%";
--4
SELECT emp_name, city FROM Employees
WHERE city LIKE "B%";
--5
SELECT emp_name,department FROM Employees
WHERE department LIKE "%s";