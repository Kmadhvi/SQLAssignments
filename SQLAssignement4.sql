use SQLAssignments

CREATE TABLE Employeedetails (
    EID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Salary INT,
    Department VARCHAR(20),
    City VARCHAR(50)
);

INSERT INTO Employeedetails (EID, Name, Age, Salary, Department, City) VALUES
(1, 'Suresh', 25, 45000, 'QA', 'New York'),
(2, 'Ramesh', 28, 52000, 'DA', 'Chicago'),
(3, 'Anita', 22, 30000, 'FS', 'New York'),
(4, 'Amit', 24, 0, 'DE', 'Boston'),
(5, 'Rahul', 30, 60000, 'QA', 'New York'),
(6, 'Sneha', 26, 48000, 'HR', 'San Francisco'),
(7, 'Aruna', 23, 35000, 'DA', 'Chicago'),
(8, 'Kiran', 21, 20000, NULL, 'Los Angeles'),
(9, 'Deepa', 27, 40000, 'FS', 'New York'),
(10, 'Ajay', 29, 55000, 'DE', 'Seattle'),
(11, 'Ritika', 24, 25000, 'QA', 'New York'),
(12, 'Asha', 26, 32000, 'DA', 'Miami');


--SQL WHERE
--1) Return the Name column from Employeedetails where the Name column is equal to
--"Suresh".
select name from Employeedetails where Name = 'Suresh'

--2) Find the top 100 rows from Employeedetails where the Salary is not equal to 0.
SELECT TOP 100 *
FROM Employeedetails
WHERE Salary <> 0;


--3) Return all rows and columns from Employeedetails where the employee’s Name starts with a
--letter less than “D”.
SELECT *
FROM Employeedetails
WHERE Name < 'D';

--4) Return all rows and columns from Employeedetails where the City column is equal to "New
--York".
Select * 
from Employeedetails
where City = 'New York'

--5) Return the Name column from Employeedetails where the Name is equal to "Ramesh". Give
--the column alias "Employee Name".
Select Name as [Employee Name] 
from Employeedetails
where Name = 'Ramesh'

--6) Using the Employeedetails table, find all employees with a Department equal to "QA" or all
--employees who have an Age greater than 23 and a Salary less than 50000.
Select * 
from Employeedetails
where Department = 'QA'
OR (Age > 23 AND Salary < 50000)

--7) Find all employees from Employeedetails who have a Department in the list of: "DA", "FS",
--and "DE". Complete this query twice – once using the IN operator in the WHERE clause and a
--second time using multiple OR operators.
Select * from Employeedetails where Department in ('DA','FS','DE')

--8) Find all employees from Employeedetails whose Name starts with the letter “A”.
SELECT *
FROM Employeedetails
WHERE Name Like 'A%';

--9) Find all employees from Employeedetails whose Name ends with the letter “a”.
Select * 
from Employeedetails
where Name Like '%a'

--10) Return all columns from the Employeedetails table for all employees who have a
--Department. That is, return all rows where the Department column does not contain a NULL
--value.
Select * 
from Employeedetails
where Department is not null 

--11) Return the EID and Salary columns from Employeedetails for all employees who have a
--Department and whose Salary exceeds 20,000.
select * 
from Employeedetails
where Department is not null and Salary <= 20000