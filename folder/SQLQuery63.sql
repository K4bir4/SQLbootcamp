--WINDOW FUNC
-- LAG FUNCTION

select * from ProfitData
--to add new column that shows previous months profit for each product

select *,
lag(Profit) over(partition by product order by monthnumber)[LAG FUN]
from ProfitData


--we dont want product column in the o/p but we want each
--months profit to be shown by monthnumber & monthname 
--also a new column should be added to show previous month's

select MonthNumber,MonthName,sum(Profit)[total profit for month],
lag(sum(profit)) over (order by monthnumber)[previous months total profit]
from ProfitData
group by MonthNumber,MonthName
order by MonthNumber





