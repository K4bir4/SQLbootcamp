

--WINDOW FUNCTION
select * from EmployeeSalaries

select * 
,FIRST_VALUE(Salary) over(order by salary asc)[minimum salary]
from EmployeeSalaries 

select * 
,FIRST_VALUE(EmployeeName) over(order by salary asc)[emp w minimum salary]
,FIRST_VALUE(Salary) over(order by salary asc)[minimum salary]
from EmployeeSalaries 


select * 
,FIRST_VALUE (EmployeeID) over(partition by department order by salary)[first value]
from EmployeeSalaries


select * 
,FIRST_VALUE (EmployeeID) over(partition by department order by salary desc)[first value]
,FIRST_VALUE (EmployeeName) over(partition by department order by salary desc)[first value ename]
from EmployeeSalaries













x
