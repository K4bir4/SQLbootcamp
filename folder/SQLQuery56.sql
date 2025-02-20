select * from employeesales

--1] 
select department,sum(saleamount) [totalsales] from employeesales
group by department

--2]
select employeeid, count(*)[salescount] from employeesales
group by employeeid

--3]
select department,avg(saleamount) [totalsales] from employeesales
group by department

--4] 
select employeeid, sum(saleamount)[total sales] 
from employeesales
group by employeeid
having count(*)>1;

--5]
select month(saledate) [month], sum (saleamount) [totalsales]
from employeesales where year(saledate)=2023
group by month(saledate)
