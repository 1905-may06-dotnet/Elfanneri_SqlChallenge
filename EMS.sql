CREATE TABLE Employee(
	ID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	FirstName varchar(30) NOT NULL,
	LastName varchar(30) NOT NULL,
	SSN varchar(15) NOT NULL,
	DeptID int UNIQUE NOT NULL
);
GO

INSERT INTO Employee(FirstName,LastName,SSN,DeptID)
VALUES ('Tina','Smith','999-99-9999',1),
	   ('John','Doe','555-55-5555',3),
	   ('Sami','El Fanneri', '222-22-2222',2);
GO

CREATE TABLE EmpDetails(
	ID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	EmployeeID int FOREIGN KEY REFERENCES Employee(ID) NOT NULL,
	Salary DECIMAL NOT NULL,
	Address1 varchar(60) NOT NULL,
	Address2 varchar(60),
	City varchar(60),
	State varchar(60),
	Country varchar(60)
);
GO

INSERT INTO EmpDetails(EmployeeID,Salary,Address1,Address2,City,State,Country)
VALUES (1,60000,'123 Main Street','Apt 2233','Austin','Texas','United-States'),
	   (2,65000,'456 South Congress','Apt 312','New-York','New York','United-States'),
	   (3,70000,'789 Westgate Blvd','Apt 690','Denver','Colorado','United-States');

CREATE TABLE Department(
	ID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Name varchar(60),
	Location varchar(60)
);
GO

INSERT INTO Department(Name,Location)
Values ('Marketing','Jacob Hall'),('Engineering','Derek Hall'),('History','Flower Hall');
GO

/* Increase Tina's Salary*/
UPDATE EmpDetails
SET Salary = 90000
WHERE EmployeeID = 1;

/* Select all employees in Marketing */
SELECT * FROM Employee WHERE DeptID = 1;