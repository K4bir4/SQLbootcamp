

select * from Customers
select * from Orders
select * from Products

-- 1] identify the pair of customers who live in the same cocuntry
select x.CustomerName,y.CustomerName from Customers x join Customers y on x.Country = y.Country and x.CustomerID <> y.CustomerID 
and x.CustomerID > y.CustomerID

-- 2] find the customer who has spent the most on their orders
select customername from 
(select CustomerName,sum(Price) [amount spent],DENSE_RANK()over(order by sum(price)desc) [DR]
from Customers c inner join 
Orders o on c.CustomerID= o.CustomerID inner join Products p on o.ProductID=p.ProductID
group by CustomerName)m where DR=1

-- 3] find the customers who have ordered more than one type of products

select CustomerName,count(ProductID)[count] from Customers c join Orders o on c.CustomerID = o.CustomerID
group by customername
having count(ProductID)>1

-- 4] list all the products and their corresponding orders, using a RIGHT JOIN, inculding products that have never been ordered.
select OrderID,p.ProductID,ProductName from Orders o right join Products p on o.ProductID = p.ProductID

-- 5] retrive all orders placed yb customers from the USA.
select OrderID from Customers c join Orders o on c.CustomerID = o.CustomerID where Country in ('USA')

--6] find the names of customers who have ordered a product priced above $500
select distinct CustomerName from Customers c join Orders o on o.CustomerID = c.CustomerID join Products p on p.ProductID = o.ProductID
where price > 500


--7]find the customers who have ordered the same product more than once
select distinct m.CustomerName from
(select CustomerName,ProductID,count(OrderID)[count] from Customers c inner join Orders o on c.CustomerID=o.CustomerID
group by CustomerName,ProductID
having count(OrderID)>1) m


 