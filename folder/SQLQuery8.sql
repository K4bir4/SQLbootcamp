

select * from dbo.Employees

insert into dbo.Employees (EmployeeID,FirstName,LastName,Department,Salary,HireDate)
values(6,'Raj','Ambani','IT',80000,'2023-04-20')

insert into  dbo.Employees (EmployeeID,FirstName,LastName)
values(8,'Rohit','Mehra')


insert into dbo.Employees 
values (9,'Mahesh','Naik','HR',73000,'2025-04-20')


select * from dbo.Employees

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Employees'

