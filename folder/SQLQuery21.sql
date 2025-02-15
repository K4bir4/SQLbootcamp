

select * from Sales
where TotalAmount>=161 

select * from Sales


select productid, sum(totalamount) [sum of sales] from Sales
group by ProductID
having sum(totalamount)< 700


select ProductID,sum(totalamount)[sum of sales] from Sales
where TotalAmount>=161
group by ProductID
having sum (TotalAmount)>=250
order by ProductID desc


select ProductID,sum(totalamount)[sum of sales] from Sales
where TotalAmount>=161
group by ProductID
having sum (TotalAmount)>=250
order by sum(TotalAmount) 
