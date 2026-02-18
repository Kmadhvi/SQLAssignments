use SQLAssignments

/*Part 1: INSERT Operations */
-- 1. Add a record for 'Suresh Patel’, age 28, salary 55000, in 'IT' with EID 101.
	Insert into Employee(EID, Ename, Eage, Esalary, Department) values
	( 101,'Suresh Patel', 28, 55000,'IT' )
	
	select * from Employee
	--Delete from Employee where eid = 102 
	--For rename the columnname
	--sp_rename 'dbo.Employee.Department','EDepartment'

-- 2. Add a record for 'Mahesh Patel' (EID 102) where the Edepartment is explicitly set to NULL.
	Insert into Employee(EID, Ename, Eage, Esalary, EDepartment) values
	( 102,'Mahesh Patel', 28, 55000 ,Null )
	
-- 3. Add three employees (EIDs 103, 104, 105) using a single VALUES list.
	Insert into Employee (eid, Ename, EDepartment)values 
	(103 ,'rekha','IT' ),
	(104 ,'Rakesh','IT' ),
	(105 ,'Mukesh','IT' ),

-- 4. Add a record for 'Jayesh Patel' (EID 106) specifying only the EID and Ename columns.
	Insert into Employee (EID, Ename)values 
	(106 ,'Jayesh Patel'),

-- 5. Add a record for a new hire in 'HR' with EID 107 
	Insert into Employee (EID, Ename, EDepartment)values 
	(107 ,'Priya', 'HR'),

-- Part 2: UPDATE Operations (Keyword Only)

-- 6. Change the Edepartment to 'Marketing' for any employee whose current department IS NULL.
	update Employee set Edepartment = 'Marketing' where EDepartment IS Null


-- 7. Change the Edepartment to 'Tech' for any employee whose City is Vadodara
	Update Employee set EDepartment = 'Tech' where Ecity = 'Vadodara'

	select * from Employee

-- 8. Update the salary to 75000 for employees whose EID is IN the list (101, 103).
	Update Employee set Esalary = 75000 where eid IN (101,103)

-- 9. Update the Edepartment to 'Management' for employees whose Eage is 22.
    Update Employee set EDepartment = 'Management' where Eage = 22

-- 10.Update the Esalary to 80000 for everyone whose name is Suresh
	update Employee set Esalary = 80000 where Ename = 'Suresh Patel'

-- Part 3: DELETE Operations

-- 11. Remove the record for the employee whose EID is (105).
	DELETE FROM Employee WHERE EID = 105;

-- 12. Remove all employees who work in departments 'Marketing'.
	Delete from Employee where EDepartment = 'Marketing'

-- 13. Remove employees whose Eage is 25.
	Delete from Employee where Eage = 25

-- 14. Remove records where the Esalary IS NULL.
	Delete from Employee where Esalary IS NULL

-- 15.Use the TRUNCATE command to empty the entire table at once (this avoids using a WHERE clause entirely).
	TRUNCATE TABLE Employee
