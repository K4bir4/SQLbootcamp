

select * from dbo.Employees

select * into #1 from dbo.employees

select * from #1

update #1 
set Department = 'HR'
where Department is null

update #1
set Salary = 89000, HireDate = '2024-03-17'
where EmployeeID = 8

select * from #1 where EmployeeID = 8

select * into #2 from dbo.Employees

select * from #2

update #2 
set Department='Finance'


