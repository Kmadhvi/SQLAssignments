
use SQLAssignments
-- A. Arithmetic Operators (+, -, , /)
    CREATE TABLE Employees (
        EmpID INT PRIMARY KEY,
        Ename VARCHAR(50),
        Age INT,
        Salary INT,
        Department VARCHAR(50)
    );
    INSERT INTO Employees VALUES
    (1, 'Amit', 20, 18000, 'IT'),
    (2, 'Anita', 25, 25000, 'HR'),
    (3, 'Rahul', 28, 30000, 'Sales'),
    (4, 'Karan', 35, 40000, 'IT'),
    (5, 'Neha', 30, 32000, 'Finance'),
    (6, 'Arjun', 22, 22000, 'Marketing'),
    (7, 'Rohan', 27, 28000, 'Operations'),
    (8, 'Simran', 32, 35000, 'Cloud'),
    (9, 'Aman', 29, 26000, 'Admin'),
    (10, 'Kiran', 40, 45000, NULL);

    select * from Employees


-- 1. Display the Ename and a 10% bonus amount for every employee
    Select Ename, Salary * 0.10 as Bonus from Employees

-- 2. Calculate the new salary for all employees if everyone gets a flat raise of ₹5,000.
    Select Ename , Salary + 5000 as RaisedSalary from Employees

--3. If an employee's age is increased by 2, what would it be? Display Ename and ProjectedAge.
    Select Ename, Age + 2 as ProjectedAge from Employees

-- 4. Show the Ename and the monthly salary deduction if a 2% professional tax is applied to the current salary.
    Select Ename, Salary * 0.02 as Taxdeduction from employees

-- B. Comparison Operators (=, <>, !=, <, >, <=, >=)

-- 6. List all employees who are exactly 20 years old.
    Select * from Employees where Age = 20

-- 7. Find all employees whose salary is greater than 20,000.
    Select * from Employees where Salary > 20000

-- 8. Display details of employees who do not belong to the 'Cloud' department.
    Select * from Employees where Department <> 'Cloud'

-- 9. List employees who were hired at an age of 25 or younger.
    Select * from Employees where Age <= 25

-- 10. Find employees whose salary is less than or equal to 25,000.
    Select * from Employees where Salary <= 25000

-- C. Logical Operators (AND, OR, NOT)

-- 11. List employees who work in the 'IT' department AND have a salary greater than 30,000.
    Select * from Employees where Department = 'IT' AND Salary > 30000

-- 12. Find employees who are either in the 'Sales' department OR the 'Marketing' department.
    Select * from Employees where Department = 'Sales' OR department = 'Marketing'

-- 13.Display employees who are older than 30 but do NOT work in the 'Finance' department.
    Select * from Employees where Age > 30 AND Department <> 'Finance'

-- 14. Find employees whose age is 28 AND salary is exactly 30,000.
    Select * from Employees where Age = 28 AND Salary = 30000

-- 15. List all employees who are NOT in the 'Admin' department and have a salary above 20,000.
    Select * from Employees Where Department <> 'Admin' AND Salary > 20000 

-- D. Special Operators (BETWEEN, IN, LIKE, IS NULL)

-- 16. Find employees whose age is between 25 and 35 (inclusive).
    Select * from Employees where Age BETWEEN 25 AND 35

-- 17. List employees who work in any of these departments: 'IT', 'HR', or 'Operations'.
    Select * from Employees where Department = 'IT' OR Department = 'HR' OR Department = 'Operations'

-- 18. Find all employees whose name starts with the letter 'A'.
    Select * from Employees Where Ename LIKE 'A%'

-- 19. List employees whose salary is in the range of 25,000 to 35,000 using the BETWEEN operator.
   Select * from Employees Where Salary Between 25000 AND 35000

-- 20. Find employees whose Department value is missing List employees who are NOT in the 'IT' or 'Sales' departments using the NOT IN operator.
   Select * from Employees where Department IS NULL 
   Select * from Employees where Department NOT IN ('IT','Sales')

-- 21. Find employees whose name ends with the letter 'n'.
    Select * from Employees where Ename Like '%n'

--22. Show employees whose age is NOT between 20 and 30.
    Select * from Employees Where Age between 20 and 30
