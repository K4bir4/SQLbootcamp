

select * from dbo.Sales

select max(totalamount) [maximum amount]from dbo.Sales

select max(saledate) [max salesdate] from dbo.Sales

select max(paymentmethod) [max pay method] from dbo.Sales
--null values are always ingnored by the max function

--Maximum quantity sold for each productID
select productid,max(quantity) [maximum quantity] from dbo.Sales
group by ProductID


select * from dbo.sales

--Maximum Total Amount for all distinct dates in saledate column
select saledate,max (totalamount) [Max total Amount] from dbo.Sales
group by SaleDate