CREATE TABLE Employee (
    e_no INT PRIMARY KEY,
    e_name VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE Department (
    dep_no INT PRIMARY KEY,
    d_name VARCHAR(100),
    e_no INT,
    FOREIGN KEY (e_no) REFERENCES Employee(e_no)
);

INSERT INTO Employee (e_no, e_name, address)
VALUES 
    (1, 'John Doe', '123 Main St'),
    (2, 'Jane Smith', '456 Oak Ave'),
    (3, 'Alice Brown', '789 Pine Rd');

INSERT INTO Department (dep_no, d_name, e_no)
VALUES 
    (101, 'HR', 1),
    (102, 'Finance', 2),
    (103, 'Engineering', 3);

SELECT * FROM employee WHERE e_name LIKE 'J%';
