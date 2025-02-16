--case in statement

select * from products

-- example1 : add a column to categorize each product into categories high,medium & low
select 
*,
case
	when price > 500 then 'High'
	when price <= 500 and price>=200 then 'Medium'
	else 'Low'
end as [High/Med/Low]
from products 
--(,) after * then case then tabs then last end with a aliases name \

select 
*,
case
	when price > 500 then 'High'
	when price <= 500 and price>=200 then 'Medium'
end as [High/Med/Low]
from products 


--Example 2 : --Provide priority to each category and sort the data acc to it
select * from products
order by
case 
	when category in ('electronics') then 1
	when category in ('Furniture') then 2
	else 3
end
 
----test-------
 select * from products
order by
case 
	when category in ('electronics') then 1
	when category in ('Furniture') then 2
	when category = 'Accessories' then 3
end 
