
select * from append1
select * from append2

select c1,c2,c3 from append1
union all -- shows duplicate records
select c1,c2,c3 from append2

select c1,c2,c3 from append1
union -- doesn't show duplicate records  
select c1,c2,c3 from append2

--NUmber of colums present in the select list have to be same
-- datatypes of columns have to be same
--order in which columns are written hve to be same

select c1,c2,c3 from append1
union
select c1,c2 from append2
--ERROR - All queries combined using a UNION, INTERSECT or EXCEPT operator must have an equal number of expressions in their target lists.


select c1,c2,c3 from append1
union -- c1 as int , c2 is nvarchar, c3 is int
select c1,c3,c2 from append2
-- ERROR - Conversion failed when converting the nvarchar value 'A' to data type int.


--aliase names which are specified in first select startemnt will be assigned to the columns 
select c1 [column1],c2[column2],c3[column3] from append1
union -- c1 as int , c2 is nvarchar, c3 is int
select c1[column4],c2[column5],c3[column6] from append2
