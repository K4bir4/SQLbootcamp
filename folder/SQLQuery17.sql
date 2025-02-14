

select * from dbo.Sales

select sum(quantity) [total quantity] from dbo.Sales

select sum(quantity) [total quantity], sum(totalamount) [sum amount] from dbo.Sales

select avg(quantity) [avg quantity] from dbo.sales

select avg(quantity) [avg quantity],avg(totalamount) [avg amount] from dbo.Sales

select * from dbo.Sales
--Q] sum of quantity, sum of total amount, 
--avg of quanitiy, avg of total amount 
--of distinct product

select 
ProductID,
sum(Quantity) as [total quantity],
sum(TotalAmount) as [sum amount],
avg(Quantity) [avg qnt sold],
avg(TotalAmount) [avg amount]
from dbo.Sales
group by ProductID


select * from dbo.Sales

-- sum of quantity, sum of amount
--avg of quantity, avg of ammount product id store id

select
productid,
storeid,
sum(quantity) [total quantity],
sum(totalamount) [sum of amount],
avg(quantity) [avg of quantity],
avg(totalamount) [avg of amount]

from dbo.Sales
group by ProductID, StoreID


select * from dbo.Sales

select count (*) [no of rows]from dbo.Sales

select count (paymentmethod) [totalmoney] from dbo.Sales

select count (distinct productid) [distinct product] from dbo.Sales

select PaymentMethod, count (distinct paymentmethod)[distinct paymode] from dbo.Sales
group by PaymentMethod


select PaymentMethod, count (paymentmethod)[distinct paymode] from dbo.Sales
group by PaymentMethod


select PaymentMethod, count (*)[distinct paymode] from dbo.Sales
group by PaymentMethod
