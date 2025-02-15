

select * from dbo.Sales

select min(quantity)[min quantity] from dbo.Sales

select min(saledate) [ minimum sales date ] from Sales

select min (paymentmethod) [min paymethod] from Sales

--show min total amount for each store id
select storeid, min(totalamount) [min totalamount]from dbo.Sales
group by StoreID

