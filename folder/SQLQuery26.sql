--left and right anti join
select * from table1
select * from table2

--left anti join
select * from table1 left join table2 
on table1.C1 = table2.C1
where table2.c3 is null

-- right anti join
select * from table1 right join table2
on table1.C1 = table2.C1
where table1.C2 is null