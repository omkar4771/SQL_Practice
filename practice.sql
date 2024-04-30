-- WorksOn Database:
-- emp (eno, ename, bdate, title, salary, dno)
-- proj (pno, pname, budget, dno)
-- dept (dno, dname, mgreno)
-- workson (eno, pno, resp, hours) 

-- 1) Write an SQL query that returns the project number and name for projects with a
-- budget greater than $100,000.
 SELECT pno, pname
 FROM proj
 WHERE budget > 100000 


--  2) Write an SQL query that returns all works on records where hours worked is less than
-- 10 and the responsibility is 'Manager'.
 SELECT *
 FROM workson
 WHERE hours < 10 AND resp = 'Manager'


-- 3) Write an SQL query that returns the employees (number and name only) who have a
-- title of 'EE' or 'SA' and make more than $35,000.
 SELECT eno, ename
 FROM emp
 WHERE (title = 'EE' OR title = 'SA') AND salary > 35000

--  4) Write an SQL query that returns the employees (name only) in department 'D1'
-- ordered by decreasing salary.
 SELECT ename
 FROM emp
 WHERE dno = 'D1'
 ORDER BY salary DESC 

--  5) Write an SQL query that returns the departments (all fields) ordered by ascending
-- department name.
 SELECT *
 FROM dept
 ORDER BY dname ASC 

--  6) Write an SQL query that returns the employee name, department name, and employee
-- title.
 SELECT ename, dname, title
 FROM emp, dept
 WHERE emp.dno = dept.dno 

--  7) Write an SQL query that returns the project name, hours worked, and project number
-- for all works on records where hours > 10.
 SELECT pname, hours, proj.pno
 FROM workson, proj
 WHERE hours > 10 AND proj.pno = workson.pno 

-- 8) Write an SQL query that returns the project name, department name, and budget for
-- all projects with a budget < $50,000.
 SELECT pname, dname, budget
 FROM proj, dept
 WHERE budget < 50000 AND proj.dno = dept.dno 

--  9) Write an SQL query that returns the employee numbers and salaries of all employees
-- in the 'Consulting' department ordered by descending salary.
 SELECT eno, salary
 FROM emp, dept
 WHERE dname = 'Consulting'
 ORDER BY salary DESC 

--  10) Write an SQL query that returns the employee name, project name, employee title,
-- and hours for all works on records.
 SELECT ename, pname, title
 FROM emp, proj, workson
 WHERE emp.eno = workson.eno and proj.pno = workson.pno
