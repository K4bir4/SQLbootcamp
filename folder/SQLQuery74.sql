--views in sql

select * from Employees

select * into emp_bkp from Employees

select * from emp_bkp

------------------------a view a virtual table,it doesnt occpy any physical space
--it is a stored sql query
--It helps reducing the complexity of the code
-- also it helps in implementing security

create view View_1 as (
select * from emp_bkp
)

select * from View_1 

-------------------------------------------
create view view_2 as (
select EmployeeID,FirstName,LastName,Email,DepartmentID,HireDate from emp_bkp
) 

select * from view_2
--**

update View_1
set EmployeeID=100

-------------------
drop view view_2

--**