

--ORDER OF EXECUTION

select * from Employees

--correct query

select distinct top 1 Department,AVG(Salary)[Avg Salary] from Employees
where Salary>50000
group by Department
having AVG(Salary)>50000
order by Department

--From & JOIN
--where
--group by 
--having 
--select 
--distinct 
--order by
--top


--incorrect query
select distinct top 1 Department,AVG(Salary)[Avg Salary] from Employees
where Salary>50000
group by Department
having [Avg Salary]>50000
order by Department