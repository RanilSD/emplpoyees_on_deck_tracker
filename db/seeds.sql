--setting up departments seeds--

INSERT INTO departments (department_name)
VALUES ("Sales"),
       ("Engineering"),
       ("Finance"),
       ("Legal");

--setting up roles seeds--

INSERT INTO roles (title, salary, department_id)
VALUES ("Sales Lead", 100000, 1),
       ("Salesperson", 80000, 1),
       ("Lead Engineer", 150000, 2),
       ("Software Engineer", 120000, 2),
       ("Account Manager", 160000, 3),
       ("Accountant", 125000, 3),
       ("Legal Team Lead", 250000, 4),
       ("Lawyer", 190000, 4);

--setting up employees seeds--

INSERT INTO employees (first_name, last_name, manager_id, role_id)
VALUES ("Lana", "Kane", null, 1),
       ("Manfred", "Mammoth", null, 2),
       ("Louise", "Belcher", null, 3),
       ("Squilliam", "Fancyson", 1, 4),
       ("Peggy", "Bundy", 4, 5),
       ("Muffin", "Man", 1, 6),
       ("Pestario", "Vargas", 2, 7);