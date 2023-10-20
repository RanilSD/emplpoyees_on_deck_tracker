--view all query--

SELECT e.id, e.first_name, e.last_name, d.name 
AS department, r.title, r.salary, CONCAT_WS(" ", m.first_name, m.last_name) 
AS manager FROM employee e LEFT JOIN employee m ON m.id = e.manager_id 
INNER JOIN role r ON e.role_id = r.id INNER JOIN department d ON r.department_id = d.id 
ORDER BY e.id ASC;

--query for all roles--

SELECT  r.id, r.title, r.salary, d.name as Department_Name 
FROM role AS r INNER JOIN department AS d ON r.department_id = d.id;

--query for getting employees--

SELECT id, CONCAT_WS(' ', first_name, last_name) 
AS Employee_Name FROM employee;

--query to update--

UPDATE employee SET role_id = 3 WHERE id = 8;
UPDATE employee SET ? WHERE ?;

--query to delete--

DELETE FROM department WHERE id = 13;