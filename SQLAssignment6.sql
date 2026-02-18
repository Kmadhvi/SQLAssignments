
--Employee (EID,Ename,MID,EID)
-- Manager (MID,Mname)
-- Project (PID,Pname,EID)
-- Department(DID,Dname)
-- store atleast 4-5 values in all tables 

create table Employee
(EID varchar(5),
Ename varchar(20),
MID int,
DID int
)

create table Manager
(MID int,
Mname varchar(20),
)

create table Project
(PID int,
Pname varchar(20),
EID varchar(5))


ALTER TABLE Project
ALTER COLUMN PID Varchar(4)

create table Department 
(DID int,
Dname varchar(20))


select * from Employee
select * from Department
select * from Project
select * from Manager

drop table Employee

INSERT INTO Department (DID, Dname) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');


INSERT INTO Manager (MID, Mname) VALUES
(10, 'Amit'),
(20, 'Neha'),
(30, 'Raj');

INSERT INTO Employee (EID, Ename, MID, DID) VALUES
('E101', 'Suresh', 10, 1),
('E102', 'Mahesh', 20, 2),
('E103', 'Ramesh', 10, 2),
('E104', 'Sneha', 30, 3),
('E105', 'Anita', 20, 1);

update Employee set DID = 2 where EID = 'E104'

INSERT INTO Project (PID, Pname, EID) VALUES
('P1', 'Payroll', 'E101'),
('P2', 'Website', 'E103'),
('P3', 'MobileApp', 'E103'),
('P4', 'Audit', 'E105'),
('P5', 'Recruitment', 'E105');

-- SYNTAX
/*SELECT 
FROM 
ON 
JOIN */


-- 1. Display each employee's name and their corresponding department name.
    Select E.Ename,D.dname from Employee E
    inner join Department D
    On E.DID = D.DID

-- 2. List all projects along with the name of the employee assigned to them.
    Select P.pname , E.ename from Project P
    Join Employee E
    on P.EID = E.EID
    
-- 3. Show the names of employees and the names of their managers.
    Select E.ename ,M.Mname from Employee E
    join Manager M 
    ON E.MID = M.MID

-- 4. Display the Project ID and the Department ID for every project.
    SELECT P.PID , D.DID FROM Project P 
    JOIN Employee E
    ON P.EID = E.EID
    JOIN Department D
    ON E.DID = D.DID

    
-- 5. List employees who work in the 'IT' department.
    SELECT E.ENAME , D.DNAME FROM EMPLOYEE E
    JOIN Department D
    ON E.DID =D.DID
    WHERE D.Dname = 'IT'

-- 6. Display employee names and their manager names for all employees in department 10.
    SELECT E.ENAME , M.MNAME FROM EMPLOYEE E
    JOIN Manager M
    ON E.MID = M.MID
    WHERE E.DID = 10
 
-- 7. Show all projects handled by ‘Suresh’.
   SELECT P.PNAME,E.ENAME FROM Project P 
   JOIN Employee E
   ON P.EID = E.EID
   WHERE E.ENAME = 'Suresh'

-- 8. Find the department name associated with Project ID 101.
    SELECT D.DNAME FROM Department D
    JOIN EMPLOYEE E
    ON D.DID =E.DID
    JOIN Project P 
    ON E.EID = P.EID
    WHERE P.PID = 'P101'

-- 9. List all employees whose manager's name is 'Suresh'.
    SELECT E.ENAME FROM EMPLOYEE E
    JOIN MANAGER M 
    ON E.MID = M.MID 
    WHERE M.MNAME = 'Suresh'


-- 10.Display the count of employees in each department name.
    SELECT D.DNAME ,COUNT(E.EID) FROM DEPARTMENT D
    LEFT JOIN EMPLOYEE E
    ON D.DID =E.DID 
    GROUP BY D.DNAME

-- 11. List all departments and the employees working in them (including departments with no employees).
    SELECT D.DNAME , E.ENAME FROM DEPARTMENT D
    LEFT JOIN EMPLOYEE E 
    ON D.DID =E.DID

-- 12.Display all employees and the projects they are assigned to (including those with no projects).
    SELECT E.ENAME ,P.PNAME FROM EMPLOYEE E 
    LEFT JOIN PROJECT P
    ON E.EID = P.EID

-- 13. Show the names of employees, their department names, and their manager names in one result.
    SELECT E.ENAME,D.DNAME ,M.MNAME FROM EMPLOYEE E
    JOIN DEPARTMENT D 
    ON E.DID = D.DID
    JOIN Manager M 
    ON E.MID = M.MID

-- 14. Find all projects and the department name they belong to.
    SELECT P.PNAME ,D.DNAME FROM PROJECT P
    JOIN EMPLOYEE E 
    ON P.EID = E.EID
    JOIN DEPARTMENT D
    ON D.DID = E.DID

--15. List all managers and the names of employees reporting to them (including managers with no reporters).
    SELECT M.MNAME ,E.ENAME FROM MANAGER M 
    LEFT JOIN EMPLOYEE E 
    ON M.MID = E.MID

-- 16. Find employees who are NOT assigned to any project.
    SELECT P.PNAME ,E.ENAME FROM PROJECT P
    LEFT JOIN EMPLOYEE E 
    ON P.EID = E.EID 
    WHERE P.EID IS NULL

-- 17.Display the names of all employees and the names of projects, but only for those in the ‘IT’ department.
    SELECT E.ENAME ,P.PNAME FROM EMPLOYEE E 
    JOIN Project P 
    ON E.EID = P.EID
    JOIN Department D
    ON E.DID = D.DID
    WHERE D.Dname = 'IT'

-- 18. Show the names of managers who are managing employees in the 'Finance' department.

-- 19.Display Department Name, Employee Name, and Project Name for all matches.
-- 20. List all projects and the manager's name responsible for the employee assigned to that project.

