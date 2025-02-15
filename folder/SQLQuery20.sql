--having clause
--genrally used with group by clause

select * from Sales
--total sales, avg sales, total quantity
-- avg quantity for each distinct products

select 
ProductID,
sum(TotalAmount)[sum of sales],
sum(Quantity) [total quantity],
avg(TotalAmount)[avg amount],
avg(Quantity) [avg quantity]
from Sales
group by ProductID 
having sum(TotalAmount)<700 and sum(Quantity) =21