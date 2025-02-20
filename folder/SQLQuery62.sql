select * from ProfitData

--to add new column that shows next  months profit for each product

select *,LEAD(Profit) over(partition by product order by monthnumber) [Next MOnths profit]
from ProfitData

--we dont want product column in the o/p but we want each
--months profit to be shown by monthnumber & monthname 
--also a new column should be added to show nect month's total profit


select MonthNumber,MonthName,sum(profit)[TOTAL PROFIT],
lead(sum(Profit)) over(order by monthnumber asc) [next month total profit]
from ProfitData
group by MonthNumber, MonthName
order by MonthNumber










