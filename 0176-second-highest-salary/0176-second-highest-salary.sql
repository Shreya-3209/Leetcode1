# Write your MySQL query statement be
 SELECT max(SALARY) AS SecondHighestSalary
 FROM employee
 WHERE salary NOT IN(
    SELECT MAX(salary) FROM Employee
 )
/*
SELECT max(e1.salary) as SecondHighestSalary FROM employee e1 INNER JOIN employee e2
ON e1.salary<e2.salary


 
SELECT salary 
FROM employee 
ORDER BY salary DESC 
LIMIT 2,2 */