
# join inner
returns the matching values

# left join 
return all records from the left table and matched record from right

# right join 
return all records from the right table and matched record from left

# full outer join 
return all records when there is matching either left or right 


# primary key
1. unique hona chaiye (unique)
2. null nhi hona chaiye (not null)

# Create Table 

```sql
CREATE TABLE Employee (
    e_no INT PRIMARY KEY,
    e_name VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE Department (
    dep_no VARCHAR(5) PRIMARY KEY,
    d_name VARCHAR(100),
    e_no INT,
    FOREIGN KEY (e_no) REFERENCES Employee(e_no) --this key is used as refrence
);

INSERT INTO Employee (e_no, e_name, address)
VALUES 
    (1, 'Ram', 'Delhi'),
    (2, 'Varun', 'Chd'),
    (3, 'Rani', 'Chd'),
    (4, 'Amrit', 'Delhi'),
    (5, 'Nitin', 'Noida');

INSERT INTO Department (dep_no, d_name, e_no)
VALUES 
    ('D1', 'HR', 1),
    ('D2', 'IT', 2),
    ('D3', 'MRKT', 4),
    ('D4', 'FINANCE', 5);

SELECT * FROM Employee;
SELECT * FROM Department;

SELECT Employee.e_no, Employee.e_name, Department.d_name, dep_no  
FROM Employee
Join Department
ON Employee.e_no = Department.e_no;
```

Suppose you have Employee and Department tables:

```sql
SELECT Employee.e_no, Employee.e_name, Department.d_name
FROM Employee
JOIN Department ON Employee.e_no = Department.e_no;
```

This retrieves employees along with their department names, only where there's a match.
Default:- inner join hi hota hai toh wo matching hi return karega.

# foreign key

A foreign key in SQL is a column (or a set of columns) that establishes a relationship between two tables. It ensures data integrity by enforcing a link between the referencing table and the referenced table.

# ASSIGNMENT QUESTION

Q1. DRAW AN ER DIAGRAM FOR A LIBRARY SYTEM INCLUDING ENTITIES LIKE:-
     BOOK , MEMBER, LIBRARIAN, STAFF/STUDENT
Q2. DIFFRENTIATE BETWEEN STRONG AND WEAK ENTITY WITH EXAMPLE 
Q3. EXPLAIN THE THREE LEVEL ARCHITECTURE OF DBMS WITH A NEAT DIAGRAM
Q4. WHAT IS MAPPING CARDINALITY CONSTRAINS EXPLAIN WITH EXAMPLE
Q5. EXPLAIN THE TYPES OF DATA MODEL CLASIFICATION
Q6. CONSIDER A SCENARIO FOR A SMALL ONLINE BOOKSTORE:-
    THE STORE NEEDS TOO MAINTAIN RECORDS OF BOOK AND CUSTOMER. 
        BASED ON THE REQUIREMNET BELOW ANSWER THE FOLLOWING QUESTION:-
            1. HOW MANY CUSTOMERS DOES THE BOOKSTORE HAS.
            2. TRACK WHICH CUSTOMER PURCHASED WHICH BOOK.
            3. SELECT THE MOST COSTLIEST BOOK.
            4. TOTAL NUMBER OF BOOKS THE STORE HAS.
    (REQUIREMENTS:-
    BOOK ID, TITLE, AUTHOR, PRICE, QUANTITY.
    CUSTOMER ID, NAME, EMAIL, ADDRESS
    (2 TABLE)).


# Like operator

The LIKE operator in SQL is used for pattern matching within text data. It allows you to find records where a specific column's value matches a given pattern.

## starting from 

'A%' 
The % symbol is a wildcard used in the LIKE operator to represent zero, one, or multiple characters in a search pattern.

## ending with 

'%dey'

## contains 

'%yuv%'

## contians in second place 

'_a%'

## contains 5 letters and second placr

'_a___'


ex:-
```sql
SELECT * FROM employee WHERE e_name LIKE 'J%';


--output
/*
1|John Doe|123 Main St
2|Jane Smith|456 Oak Ave
*/
```