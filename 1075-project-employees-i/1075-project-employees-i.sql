SELECT p.project_id , round(avg(experience_years),2) as average_years
FROM project as p
LEFT JOIN employee as e
ON p.employee_id=e.employee_id
group by project_id