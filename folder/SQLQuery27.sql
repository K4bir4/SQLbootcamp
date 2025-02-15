--SELF JOIN

select * from table1
select * from table2

select * from table1 a inner join table1 b 
on a.C1=b.C1 --self join using two different aliases

select a.C1,b.C2 from table1 a inner join table1 b 
on a.C1=b.C1 -- write inner join/ join works the same

