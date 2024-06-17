CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
RETURN (     # Write your MySQL query statement below.
  with CTE as(
       SELECT *,DENSE_RANK() OVER (ORDER BY salary DESC)
    AS rnk
    FROM employee
  )
    
    SELECT DISTINCT IFNULL(salary,NULL)
    FROM CTE
    WHERE RNK=N

 );
END