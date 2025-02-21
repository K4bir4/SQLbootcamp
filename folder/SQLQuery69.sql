--CTE COMMON TABLE EXPRESSION
/*
a common table expression (CTE)in sql is a temp result set that you can reference within  a
SELECT, INSERT, UPDATE, or DELETE  statement , CTEs are defined using the WITH keyword,
and they can make complex queries easier to write, understand, and maintain by breaking them into simpler parts.
*/

select * from Employees

select * into #temp1 from Employees

select * from #temp1

---Example 1 : CTE

with CTE as(
select * from #temp1
)

select * from cte 

--Example 2 ] 

with test_cte as (
select employeeid,firstname from #temp1 where EmployeeID in (2,4)
)
select * from test_cte


--example 3]

with [common table expression] as (
select * from #temp1 where EmployeeID in (1,2,3)
)

select * into #temp2 from [common table expression]

select* from #temp2


-- example 4] 

with cte_1 as (
select * from #temp1 where EmployeeID in (2,4,6)
)

update #temp1 set employeeid =101 where Employeeid in (select distinct employeeid from cte_1)

--
select * from #temp1


--example 5]

with cte_2 as (
select * from #temp1 where EmployeeID=1
)

delete from #temp1 where EmployeeID in (select distinct EmployeeID from cte_2)

select * from #temp1


--example 6]

with cte_3 as (
select * from #temp1 where EmployeeID in (101) 
)

insert into #temp1 select * from cte_3 


