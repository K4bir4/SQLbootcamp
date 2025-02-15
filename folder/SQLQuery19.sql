

select * from Sales

select paymentmethod,sum (totalamount) as [sum of sales] from Sales
group by PaymentMethod

select ProductID,PaymentMethod, sum(TotalAmount) [sum of sales] from Sales
group by ProductID,PaymentMethod 
order by ProductID



