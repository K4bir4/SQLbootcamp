--copying data from one table to the new table

--Case 1 : new table simply doesn't exist

--case 2 : new table may exist/ structure may exist

--case1:
select * from Sales

--this statment will result in creation of new tabl1
--having structrue both same as that of dbo.SALES
select * into New_table_1 from Sales

---------------certian columns to be copied
drop table New_table_1

select productid,quantity into new_table_1 from dbo.Sales

select * from new_table_1



---csae 2 : new table stucture already exist

select top 0 * into new_table_2 from dbo.Sales --copy shcema strcutre


select * from new_table_2

insert into new_table_2 select * from Sales

-------copying certian columns

select * into new_table_3 from Sales
where 1=0 --false conditons copy schema structure

select * from new_table_3


insert into new_table_3 (ProductID,SaleDate) 
select productid,saledate from Sales