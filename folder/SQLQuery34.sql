

select * from prdoucts 

-- we need to group the data based on columns category & price into different categories 
--i.e affordable & premium

select 
*, 
case 
	when category = 'electronics' then
		case when price > 300 then 'premium electronics'
		else 'affordable electronics'
		end
    when category = 'furniture' then
		case when Price>= 250 then 'premium furniture'
		else 'affordable furniture'
		end
else
		case when price>=25 then 'premium accessories'
		else 'affordable accessories'
		end
end as [groups]
from products


-------test---------
select 
*, 
case 
	when category = 'electronics' then
		case when price > 300 then 'premium electronics'
		else 'affordable electronics'
		end
    when category = 'furniture' then
		case when Price>= 250 then 'premium furniture'
		else 'affordable furniture'
		end
when category in ('Accessories') then
		case when price>=25 then 'premium accessories'
		else 'affordable accessories'
		end
end as [groups]
from products