
--WINDOW FUNC
-- LAST FUNC

select * from EmployeeSalaries

--incorrect query
select * 
,LAST_VALUE(EmployeeName) over(order by salary desc)[emp with lowest salary]
from EmployeeSalaries

--correct query
select * 
,LAST_VALUE(EmployeeName) 
over(order by salary desc rows between unbounded preceding and unbounded following)[emp with lowest salary]
from EmployeeSalaries


select * 
,LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following)[emp with lowest salary]
,LAST_VALUE(salary) over(order by salary desc rows between unbounded preceding and unbounded following)[lowest salary]
from EmployeeSalaries


select * 
,LAST_VALUE(EmployeeName) over(partition by department order by salary desc rows between unbounded preceding and unbounded following)[emp with lowest salary]
,LAST_VALUE(salary) over(partition by department order by salary desc rows between unbounded preceding and unbounded following)[lowest salary]
from EmployeeSalaries


--max salary
select * 
,LAST_VALUE(EmployeeName) over(partition by department order by salary asc rows between unbounded preceding and unbounded following)[emp with highest salary]
,LAST_VALUE(salary) over(partition by department order by salary asc rows between unbounded preceding and unbounded following)[highest salary]
from EmployeeSalaries


--first value func use {use asc with last / desc with frist} o/p is same
select * 
,first_VALUE(EmployeeName) over(partition by department order by salary desc )[emp with highest salary]
,first_VALUE(salary) over(partition by department order by salary desc )[highest salary]
from EmployeeSalaries









