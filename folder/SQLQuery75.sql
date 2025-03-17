

-- Indexs  is MYSQL
-- indexes are defined on columns or 

select * from dbo.Employees

create index IX_1 on dbo.employees(salary desc)

create index IX_2 on dbo.employees (firstname,lastname)

drop index dbo.employees.IX_1