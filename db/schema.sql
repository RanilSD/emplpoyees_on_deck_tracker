--making sure database doesnt exist--

DROP DATABASE IF EXISTS employees_tracker_db;

--creating database--

CRAETE DATABASE employees_tracker_db;

--setting which database to use--

USE employee_tracker_db;

--creating the department table--

CREATE TABLE departments (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30)
);

--creating roles table and linking it to departments table via foreign key--

CRAETE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id),
    REFERENCES departments(id),
    ON DELETE SET NULL
);

--creating employees table and connecting to roles table via foreign key--

CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR (30),
    last_name VARCHAR (30),
    manager_id INT,
    role_id INT,
    FOREIGN KEY (role_id),
    REFERENCES roles(id),
    FOREIGN KEY (manager_id),
    REFERENCES employees(id),
    ON DELETE SET NULL
);